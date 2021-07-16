import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_subareas.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/web/sandstein.dart';

part 'subareas_event.dart';
part 'subareas_state.dart';
part 'subareas_bloc.freezed.dart';

class SubareasBloc extends Bloc<SubareasEvent, SubareasState> {
  SubareasBloc() : super(_Initial()) {
    on<_RequestSubareas>(_onRequestSubareas);
    on<_UpdateSubareas>(_onUpdateSubareas);
    on<_UpdateSubareasInklSubitems>(_onUpdateSubareasInklSubitems);

    on<_InvalidateSubareas>((event, emit) => emit(SubareasState.initial()));
  }

  void _onRequestSubareas(
    _RequestSubareas event,
    Emit<SubareasState> emit,
  ) async {
    try {
      emit(SubareasState.inProgress());
      final sqlResults = await SqlHandler().querySubareas(event.area.id);
      final subareas =
          sqlResults.map((sqlRow) => Subarea.fromJson(sqlRow)).toList();

      emit(SubareasState.subareasReceived(event.area, subareas));
    } catch (e) {
      emit(SubareasState.failure(e));
      emit(SubareasState.subareasReceived(event.area, []));
    }
  }

  void _onUpdateSubareas(
    _UpdateSubareas event,
    Emit<SubareasState> emit,
  ) async {
    // TODO: inform user that action is already in progress
    if (!(state is _SubareasReceived)) {
      print('already in progress');
      return;
    }
    try {
      emit(SubareasState.updateInProgress('subareas', 0));
      final result = await _updateSubareasInclComments(event.area);
      emit(SubareasState.updateInProgress('subareas', 100));
      emit(SubareasState.updateFinished(result));
    } catch (e) {
      emit(SubareasState.failure(e));
    } finally {
      add(SubareasEvent.requestSubareas(event.area));
    }
  }

  void _onUpdateSubareasInklSubitems(
    _UpdateSubareasInklSubitems event,
    Emit<SubareasState> emit,
  ) async {
    // TODO: inform user that action is already in progress
    if (!(state is _SubareasReceived)) {
      print('already in progress');
      return;
    }
    try {
      emit(SubareasState.updateInProgress('subareas', 0));
      final result = await _updateSubareasInclAllSubitems(event.area);
      emit(SubareasState.updateInProgress('subareas', 100));
      emit(SubareasState.updateFinished(result));
    } catch (e) {
      emit(SubareasState.failure(e));
    } finally {
      add(SubareasEvent.requestSubareas(event.area));
    }
  }

  /// update data from Sandsteinklettern
  ///
  /// fetch the data, then delete records, finally insert new data
  Future<int> _updateSubareasInclComments(Area area) async {
    // fetch data from subareas + comments
    // delete old data
    await SqlHandler().deleteSubareasIncludingComments(area.id);

    final jsonDataSubareas = Sandstein().fetchJsonFromWeb(
      Sandstein.subareasWebTarget,
      Sandstein.subareasWebQuery,
      area.id.toString(),
    );
    final count = await SqlHandler()
        .insertJsonData(SqlHandler.subareasTablename, jsonDataSubareas);

    final jsonDataComments = Sandstein().fetchJsonFromWeb(
      Sandstein.commentsWebTarget,
      Sandstein.commentsWebQuerySubareas,
      area.id.toString(),
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
  Future<int> _updateSubareasInclAllSubitems(
    Area area,
  ) async {
    // update subareas
    final result = await _updateSubareasInclComments(area);
    // get results from database and iterate through all items
    final sqlResults = await SqlHandler().querySubareas(area.id);
    var percentageCounter = sqlResults.length;

    // TODO: UPDATE Subitems - static method?!?!

    for (var sqlRow in sqlResults) {
      await RocksBloc.updateRocksIncludingSubitems(Subarea(
        int.parse(sqlRow.values.elementAt(0).toString()),
        -1,
        '__dummy__',
        '__dummy__',
        -1,
        DateTime.now(),
      ));
      final percent =
          (sqlResults.length - --percentageCounter) * 100 ~/ sqlResults.length;
      emit(SubareasState.updateInProgress('subareas', percent));
    }

    // return result from subareas fetch
    return result;
  }

  Area? get getAreaOrNull => state.maybeWhen(
        subareasReceived: (area, subareas) => area,
        orElse: () => null,
      );
}
