import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_rocks.dart';
import 'package:rock_carrot/database/sql_teufelsturm.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/teufelsturm.dart';
import 'package:rock_carrot/web/web_helper.dart';
import 'package:semaphore/semaphore.dart';

class RocksBloc extends BaseBloc {
  @override
  void onRequestData(
    BaseEventRequestData event,
    Emit<BaseState> emit,
  ) async {
    try {
      emit(BaseStateInProgress());
      final items = await requestData(event.baseitem);
      final blocedItems = items
          .map((item) => RockBloc(
              item: item as Rock,
              childBloc: RoutesBloc()..add(BaseEventRequestData(item))))
          .toList();
      emit(BaseStateDataReceived(
          baseitem: SubareaBloc(
              item: event.baseitem as Subarea, childBloc: RocksBloc()),
          blocedItems: blocedItems));
    } on Exception catch (exception) {
      emit(BaseStateFailure(exception));
      emit(BaseStateDataReceived(
          baseitem: SubareaBloc(
              item: event.baseitem! as Subarea, childBloc: RocksBloc()),
          blocedItems: []));
    }
  }

  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults = await SqlHandler().queryRocks((baseitem as Subarea).id);
    return sqlResults.map((sqlRow) => Rock.fromJson(sqlRow)).toList();
  }

  @override
  Future<int> updateData(Baseitem? baseitem) {
    return RocksBloc.updateData_static(baseitem);
  }

  /* SANDSTEIN */

  /// update data from Sandsteinklettern
  ///
  /// fetch the data, then delete records, finally insert new data
  // needs to be static to be called from Subareas for updating
  static Future<int> updateData_static(Baseitem? baseitem) async {
    // delete all data
    await SqlHandler().deleteRocksIncludingSubitems((baseitem as Subarea).id);

    final jsonDataRocks = Sandstein().fetchJsonFromWeb(
      Sandstein.rocksWebTarget,
      Sandstein.rocksWebQuery,
      baseitem.id.toString(),
    );
    final count = await SqlHandler()
        .insertJsonData(SqlHandler.rocksTablename, jsonDataRocks);

    final jsonDataRoutes = Sandstein().fetchJsonFromWeb(
      Sandstein.routesWebTarget,
      Sandstein.routesWebQuery,
      baseitem.id.toString(),
    );
    await SqlHandler()
        .insertJsonData(SqlHandler.routesTablename, jsonDataRoutes);

    final jsonDataComments = Sandstein().fetchJsonFromWeb(
      Sandstein.commentsWebTarget,
      Sandstein.commentsWebQueryRocks,
      baseitem.id.toString(),
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

  @override
  Future<int> updateDataIntensive(Baseitem baseitem) async {
    final ttAreaId = sandsteinIdTeufelsturmAreaIdMap[(baseitem as Subarea).id]!;

    /// stream that holds the requested items
    final webRequestDataControllerRoutes = StreamController<Map<String, int>>();
    final webRequestDataControllerComments =
        StreamController<Map<String, int>>();

    /// pool that limites the request
    final pool = Pool(50, timeout: Duration(seconds: 30));

    /// semaphore that signals the finish line :)
    final semaphoreRoutes = LocalSemaphore(1);

    emit(BaseStateUpdateInProgress('Rocks', 0));

    // get Rocks of Areas ID;
    final rockResponse = await fetchRocksByArea(ttAreaId);

    emit(BaseStateUpdateInProgress('Rocks', 33));

    final jsonData = Teufelsturm().parseRocks(rockResponse, areaId: ttAreaId);

    emit(BaseStateUpdateInProgress('Rocks', 66));

    await SqlHandler().deleteTTRocks(ttAreaId);
    final rockCount = SqlHandler().insertJsonData(
      SqlHandler.ttRocksTablename,
      jsonData,
    );

    emit(BaseStateUpdateInProgress('Rocks', 100));

    emit(BaseStateUpdateInProgress('Routes', 0));

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
          throw Exception('too many retries for Routes from $baseitem');
        }
      } else {
        /// response is valid ==> perform actions
        final jsonRoutes = Teufelsturm().parseRoutesRegEx(
          response.body,
          rockId: id,
          areaId: ttAreaId,
        );
        final /*routesCount*/ _ = SqlHandler().enqueueInsertJsonData(
          batchRoutes,
          SqlHandler.ttRoutesTablename,
          jsonRoutes,
        );

        // update progress
        final percent =
            (sqlRockIds.length - numberOfIds) * 100 ~/ sqlRockIds.length;
        emit(BaseStateUpdateInProgress('Routes', percent));

        /// count ids for semaphore to be released
        if (--numberOfIds == 0) {
          semaphoreRoutes.release();
        }
      }
    });

    //wait for requests to finish
    await semaphoreRoutes.acquire();
    semaphoreRoutes.release();

    emit(BaseStateUpdateInProgress('Routes', 100));

    // perform commit
    await SqlHandler().commitInsertJsonData(batchRoutes);

    emit(BaseStateUpdateInProgress('Comments', 0));

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
          throw Exception('too many retries for Comments from $baseitem');
        }
      } else {
        /// response is valid ==> perform actions
        final jsonComments = Teufelsturm().parseCommentsRegEx(
          response.body,
          routeId: id,
          rockId: rockId,
          areaId: ttAreaId,
        );
        final /*routesCount*/ _ = SqlHandler().enqueueInsertJsonData(
          batchComments,
          SqlHandler.ttCommentsTablename,
          jsonComments,
        );

        final percent =
            (sqlRoutes.length - numberOfCommentIds) * 100 ~/ sqlRoutes.length;

        emit(BaseStateUpdateInProgress('Comments', percent));

        /// count ids for semaphore to be released
        if (--numberOfCommentIds == 0) {
          semaphoreComments.release();
        }
      }
    });

    //wait for requests to finish
    await semaphoreComments.acquire();
    semaphoreComments.release();

    emit(BaseStateUpdateInProgress('Comments', 100));
    // perform commit
    await SqlHandler().commitInsertJsonData(batchComments);

    emit(BaseStateUpdateInProgress('Caching', 0));
    // now perform the cache of mapping tables
    await SqlHandler().cacheTTMapping(ttAreaId);
    emit(BaseStateUpdateInProgress('Caching', 100));

    return rockCount;
  }

  /// get document data for all Rocksfrom Teufelsturm
  Future<String> fetchRocksByArea(int teufelsturmAreaId) async {
    final uri = Uri.http('teufelsturm.de', 'gipfel/suche.php');
    final response = await http.post(uri, body: {
      'anzahl': 'Alle', // all items in one page
      'gebietnr': teufelsturmAreaId.toString(),
    });
    if (WebHelper.isResponseValid(response)) {
      return response.body;
    } else {
      throw Exception('failed this receice data');
    }
  }
}
