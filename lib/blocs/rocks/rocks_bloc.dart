import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_rocks.dart';
import 'package:rock_carrot/database/sql_teufelsturm.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/teufelsturm.dart';
import 'package:rock_carrot/web/teufelsturm_scraper.dart';
import 'package:semaphore/semaphore.dart';

part 'rocks_event.dart';
part 'rocks_state.dart';
part 'rocks_bloc.freezed.dart';

class RocksBloc extends Bloc<RocksEvent, RocksState> {
  RocksBloc() : super(_Initial()) {
    on<_RequestRocks>(_onRequestRocks);
    on<_UpdateRocks>(_onUpdateRocks);
    on<_UpdateRocksTT>(_onUpdateRocksTT);

    on<_InvalidateRocks>((event, emit) => emit(RocksState.initial()));
  }

  void _onRequestRocks(
    _RequestRocks event,
    Emit<RocksState> emit,
  ) async {
    try {
      emit(RocksState.inProgress());
      final sqlResults = await SqlHandler().queryRocks(event.subarea.sektorid);
      final rocks = sqlResults.map((sqlRow) => Rock.fromJson(sqlRow)).toList();

      emit(RocksState.rocksReceived(event.subarea, rocks));
    } catch (e) {
      emit(RocksState.failure(e));
      emit(RocksState.rocksReceived(event.subarea, []));
    }
  }

  void _onUpdateRocks(
    _UpdateRocks event,
    Emit<RocksState> emit,
  ) async {
    // TODO: inform user that action is already in progress
    if (!(state is _RocksReceived)) {
      print('already in progress');
      return;
    }
    try {
      emit(RocksState.updateInProgress('rocks', 0));
      final result = await updateRocksIncludingSubitems(event.subarea);
      emit(RocksState.updateInProgress('rocks', 100));
      emit(RocksState.updateFinished(result));
    } catch (e) {
      emit(RocksState.failure(e));
    } finally {
      add(RocksEvent.requestRocks(event.subarea));
    }
  }

  void _onUpdateRocksTT(
    _UpdateRocksTT event,
    Emit<RocksState> emit,
  ) async {
    // TODO: inform user that action is already in progress
    if (!(state is _RocksReceived)) {
      print('already in progress');
      return;
    }
    try {
      emit(RocksState.updateInProgress('rocksTT', 0));
      final result = await updateTTComments(event.subarea, emit);
      emit(RocksState.updateInProgress('rocksTT', 100));
      emit(RocksState.updateFinished(result));
    } catch (e) {
      emit(RocksState.failure(e));
    } finally {
      add(RocksEvent.requestRocks(event.subarea));
    }
  }

  /* SANDSTEIN */

  /// update data from Sandsteinklettern
  ///
  /// fetch the data, then delete records, finally insert new data
  static Future<int> updateRocksIncludingSubitems(Subarea subarea) async {
    // delete all data
    await SqlHandler().deleteRocksIncludingSubitems(subarea.sektorid);

    final jsonDataRocks = Sandstein().fetchJsonFromWeb(
      Sandstein.rocksWebTarget,
      Sandstein.rocksWebQuery,
      subarea.sektorid.toString(),
    );
    final count = await SqlHandler()
        .insertJsonData(SqlHandler.rocksTablename, jsonDataRocks);

    final jsonDataRoutes = Sandstein().fetchJsonFromWeb(
      Sandstein.routesWebTarget,
      Sandstein.routesWebQuery,
      subarea.sektorid.toString(),
    );
    await SqlHandler()
        .insertJsonData(SqlHandler.routesTablename, jsonDataRoutes);

    final jsonDataComments = Sandstein().fetchJsonFromWeb(
      Sandstein.commentsWebTarget,
      Sandstein.commentsWebQueryRocks,
      subarea.sektorid.toString(),
    );

    // insert new data
    await SqlHandler()
        .insertJsonData(SqlHandler.commentsTablename, jsonDataComments);

    return count;
  }

  /* TEUFELSTURM */
  /// update data from Sandsteinklettern
  ///
  /// fetch the data, then delete records, finally insert new data
  Future<int> updateTTComments(
    Subarea subarea,
    Emit<RocksState> emit,
  ) async {
    final ttAreaId = sandsteinIdTeufelsturmAreaIdMap[subarea.sektorid]!;

    /// stream that holds the requested items
    final webRequestDataControllerRoutes = StreamController<Map<String, int>>();
    final webRequestDataControllerComments =
        StreamController<Map<String, int>>();

    /// pool that limites the request
    final pool = Pool(50, timeout: Duration(seconds: 30));

    /// semaphore that signals the finish line :)
    final semaphoreRoutes = LocalSemaphore(1);

    emit(RocksState.updateInProgress('Rocks', 0));

    // get Rocks of Areas ID;
    final rockResponse = await Teufelsturm().fetchRocksByArea(ttAreaId);

    emit(RocksState.updateInProgress('Rocks', 33));

    final jsonData = Teufelsturm().parseRocks(rockResponse, areaId: ttAreaId);

    emit(RocksState.updateInProgress('Rocks', 66));

    await SqlHandler().deleteTTRocks(ttAreaId);
    final rockCount = SqlHandler().insertJsonData(
      SqlHandler.ttRocksTablename,
      jsonData,
    );

    emit(RocksState.updateInProgress('Rocks', 100));

    emit(RocksState.updateInProgress('Routes', 0));

    ///
    /// ROUTES
    ///
    // get all Routes by RockID
    // remove old Routes
    await SqlHandler().deleteTTRoutesbyArea(ttAreaId);
    // iterate through all Rocks and receive routes
    final sqlRockIds = await SqlHandler().queryRockIdsByArea(ttAreaId);
    // prepare sql batch
    final batchRoutes = await SqlHandler().prepareInsertJsonData();

    // prepare waiting
    await semaphoreRoutes.acquire();

    /// add fetched ids to the StreamController
    for (var sqlRockId in sqlRockIds.toList()) {
      webRequestDataControllerRoutes.add({
        'id': int.tryParse(sqlRockId.values.elementAt(0).toString()) ?? -1,
        'retries': 5,
      });
    }
    // counter variable to release Semaphore
    var numberOfIds = sqlRockIds.length;

    // implementing the subscription to the Request Stream
    webRequestDataControllerRoutes.stream.listen((Map<String, int> data) async {
      final retries = data['retries'] ?? 0;
      final id = data['id'] ?? 0;
      http.Response? response;
      try {
        response = await pool.withResource(
          () => http.post(
            Uri.http(
              'teufelsturm.de',
              'wege/suche.php',
            ),
            body: {'gipfelnr': id.toString()},
          ).timeout(Duration(seconds: 5)),
        );
      } catch (e) {
        print('$id: $e');
      }
      if (response == null || response.statusCode != 200) {
        if (retries > 0) {
          data['retries'] = retries - 1;
          webRequestDataControllerRoutes.sink.add(data);
          print('$id readded (retries: $retries)');
        } else {
          throw Exception('too many retries for Routes from $subarea');
        }
      } else {
        /// response is valid ==> perform actions
        final jsonRoutes = TeufelsturmScraper().parseRoutesRegEx(
          response.body,
          rockId: id,
          areaId: ttAreaId,
        );
        final routesCount = SqlHandler().enqueueInsertJsonData(
          batchRoutes,
          SqlHandler.ttRoutesTablename,
          jsonRoutes,
        );

        // update progress
        final percent =
            (sqlRockIds.length - numberOfIds) * 100 ~/ sqlRockIds.length;
        emit(RocksState.updateInProgress('Routes', percent));

        /// count ids for semaphore to be released
        if (--numberOfIds == 0) {
          semaphoreRoutes.release();
        }
      }
    });

    //wait for requests to finish
    await semaphoreRoutes.acquire();
    semaphoreRoutes.release();

    emit(RocksState.updateInProgress('Routes', 100));

    // perform commit
    await SqlHandler().commitInsertJsonData(batchRoutes);

    emit(RocksState.updateInProgress('Comments', 0));

    ///
    ///COMMENTS
    ///
    // first remove old comments
    await SqlHandler().deleteTTCommentsbyArea(ttAreaId);

    // iterate through all Routes and receive comments
    final sqlRoutes = await SqlHandler().queryRouteIdsByArea(ttAreaId);
    // prepare sql batch
    final batchComments = await SqlHandler().prepareInsertJsonData();

    final semaphoreComments = LocalSemaphore(1);
    //wait for requests to finish
    await semaphoreComments.acquire();

    /// add fetched ids to the StreamController
    for (var sqlRoutesId in sqlRoutes.toList()) {
      webRequestDataControllerComments.add({
        'routeid':
            int.tryParse(sqlRoutesId.values.elementAt(0).toString()) ?? -1,
        'rockid':
            int.tryParse(sqlRoutesId.values.elementAt(1).toString()) ?? -1,
        'retries': 5,
      });
    }
    // counter variable to release Semaphore
    var numberOfCommentIds = sqlRoutes.length;

    // implementing the subscription to the Request Stream
    webRequestDataControllerComments.stream
        .listen((Map<String, int> data) async {
      final retries = data['retries'] ?? 0;
      final id = data['routeid'] ?? -1;
      final rockId = data['rockid'] ?? -1;
      http.Response? response;
      try {
        response = await pool.withResource(
          () => http.post(
            Uri.http(
              'teufelsturm.de',
              'wege/bewertungen/anzeige.php',
            ),
            body: {'wegnr': id.toString()},
          ).timeout(Duration(seconds: 5)),
        );
      } catch (e) {
        print('$id: $e');
      }
      if (response == null || response.statusCode != 200) {
        if (retries > 0) {
          data['retries'] = retries - 1;
          webRequestDataControllerComments.sink.add(data);
          print('$id readded (retries: $retries)');
        } else {
          throw Exception('too many retries for Comments from $subarea');
        }
      } else {
        /// response is valid ==> perform actions
        final jsonComments = TeufelsturmScraper().parseCommentsRegEx(
          response.body,
          routeId: id,
          rockId: rockId,
          areaId: ttAreaId,
        );
        final routesCount = SqlHandler().enqueueInsertJsonData(
          batchComments,
          SqlHandler.ttCommentsTablename,
          jsonComments,
        );

        final percent =
            (sqlRoutes.length - numberOfCommentIds) * 100 ~/ sqlRoutes.length;

        emit(RocksState.updateInProgress('Comments', percent));

        /// count ids for semaphore to be released
        if (--numberOfCommentIds == 0) {
          semaphoreComments.release();
        }
      }
    });

    //wait for requests to finish
    await semaphoreComments.acquire();
    semaphoreComments.release();

    emit(RocksState.updateInProgress('Comments', 100));
    // perform commit
    await SqlHandler().commitInsertJsonData(batchComments);

    emit(RocksState.updateInProgress('Caching', 0));
    // now perform the cache of mapping tables
    await SqlHandler().cacheTTMapping(ttAreaId);
    emit(RocksState.updateInProgress('Caching', 100));

    return rockCount;
  }
}
