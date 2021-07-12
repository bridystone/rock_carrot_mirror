import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_areas.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/web/sandstein.dart';

part 'areas_event.dart';
part 'areas_state.dart';
part 'areas_bloc.freezed.dart';

class AreasBloc extends Bloc<AreasEvent, AreasState> {
  AreasBloc() : super(_Initial()) {
    on<_RequestAreas>(_onRequestAreas);
    on<_UpdateAreas>(_onUpdateAreas);
  }

  void _onRequestAreas(
    _RequestAreas event,
    Emit<AreasState> emit,
  ) async {
    try {
      emit(AreasState.inProgress());
      final sqlResults = await SqlHandler().queryAreas(event.country.land);
      final areas = sqlResults.map((sqlRow) => Area.fromJson(sqlRow)).toList();

      emit(AreasState.areasReceived(event.country, areas));
    } catch (e) {
      emit(AreasState.failure(e));
      emit(AreasState.areasReceived(event.country, []));
    }
  }

  void _onUpdateAreas(
    _UpdateAreas event,
    Emit<AreasState> emit,
  ) async {
    // TODO: inform user that action is already in progress
    if (!(state is _AreasReceived)) {
      print('already in progress');
      return;
    }
    try {
      emit(AreasState.updateInProgress('areas', 0));
      final result = await _updateAreas(event.country);
      emit(AreasState.updateInProgress('areas', 100));
      emit(AreasState.updateFinished(result));
    } catch (e) {
      emit(AreasState.failure(e));
    } finally {
      add(AreasEvent.requestAreas(event.country));
    }
  }

  /// update data from Sandsteinklettern
  ///
  /// fetch the data, then delete records, finally insert new data
  Future<int> _updateAreas(Country country) async {
    var jsonData = Sandstein().fetchJsonFromWeb(
      Sandstein.areasWebTarget,
      Sandstein.areasWebQuery,
      country.land,
    );
    await SqlHandler().deleteAreas(country.land);

    return SqlHandler().insertJsonData(SqlHandler.areasTablename, jsonData);
  }
}
