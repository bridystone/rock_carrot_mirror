import 'package:bloc/bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_subareas.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/web/sandstein.dart';

class SubareasBloc extends BaseBloc {
  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults = await SqlHandler().querySubareas((baseitem as Area).id);
    return sqlResults.map((sqlRow) => Subarea.fromJson(sqlRow)).toList();
  }

  @override
  void onRequestData(
    BaseEventRequestData event,
    Emit<BaseState> emit,
  ) async {
    try {
      emit(BaseStateInProgress());
      final items = await requestData(event.baseitem);
      final blocedItems = items
          .map((item) => SubareaBloc(
              item: item as Subarea,
              childBloc: RocksBloc()..add(BaseEventRequestData(item))))
          .toList();
      emit(BaseStateDataReceived(
          baseitem:
              AreaBloc(item: event.baseitem as Area, childBloc: SubareasBloc()),
          blocedItems: blocedItems));
    } on Exception catch (exception) {
      emit(BaseStateFailure(exception));
      emit(BaseStateDataReceived(
          baseitem: AreaBloc(
              item: event.baseitem! as Area, childBloc: SubareasBloc()),
          blocedItems: []));
    }
  }

  @override
  Future<int> updateData(Baseitem? baseitem) async {
    // fetch data from subareas + comments
    // delete old data
    await SqlHandler().deleteSubareasIncludingComments((baseitem as Area).id);

    final jsonDataSubareas = Sandstein().fetchJsonFromWeb(
      Sandstein.subareasWebTarget,
      Sandstein.subareasWebQuery,
      baseitem.id.toString(),
    );
    final count = await SqlHandler()
        .insertJsonData(SqlHandler.subareasTablename, jsonDataSubareas);

    final jsonDataComments = Sandstein().fetchJsonFromWeb(
      Sandstein.commentsWebTarget,
      Sandstein.commentsWebQuerySubareas,
      baseitem.id.toString(),
    );

    // insert new data
    await SqlHandler()
        .insertJsonData(SqlHandler.commentsTablename, jsonDataComments);

    return count;
  }

  /// update data from Sandsteinklettern
  ///
  /// This is a combination of Subareas fetch
  /// with All Rock Data (incl. subitems)
  @override
  Future<int> updateDataIntensive(
    Baseitem? baseitem,
  ) async {
    // update subareas
    final result = await updateData(baseitem as Area);
    // get results from database and iterate through all items
    final sqlResults = await SqlHandler().querySubareas(baseitem.id);
    var percentageCounter = sqlResults.length;

    // TODO: UPDATE Subitems - static method?!?!

    for (var sqlRow in sqlResults) {
      await RocksBloc.updateData_static(Subarea(
        id: int.parse(sqlRow.values.elementAt(0).toString()),
        nr: -1,
        name_internal: '__dummy__',
        secondLanguageName_internal: '__dummy__',
        commentCount: -1,
        lastUpdated: DateTime.now(),
      ));
      final percent =
          (sqlResults.length - --percentageCounter) * 100 ~/ sqlResults.length;
      // TODO: this shouldn't be done -> provide parameter emit in function
      emit(BaseStateUpdateInProgress('subareas', percent));
    }

    // return result from subareas fetch
    return result;
  }
}
