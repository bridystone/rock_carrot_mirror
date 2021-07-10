import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_subareas.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

part 'subareas_event.dart';
part 'subareas_state.dart';
part 'subareas_bloc.freezed.dart';

class SubareasBloc extends Bloc<SubareasEvent, SubareasState> {
  SubareasBloc() : super(_Initial()) {
    on<_RequestSubareas>(_onRequestSubareas);
    on<_InvalidateSubareas>(
        (event, emit_dummy) => emit(SubareasState.initial()));
  }

  void _onRequestSubareas(
    _RequestSubareas event,
    Emit<SubareasState> emit_dummy,
  ) async {
    try {
      emit(SubareasState.inProgress());
      final sqlResults = await SqlHandler().querySubareas(event.area.gebietid);
      final subareas =
          sqlResults.map((sqlRow) => Subarea.fromJson(sqlRow)).toList();

      emit(SubareasState.subareasReceived(event.area, subareas));
    } catch (e) {
      emit(SubareasState.failure());
      emit(SubareasState.subareasReceived(event.area, []));
    }
  }
}
