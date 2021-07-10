import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_areas.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

part 'areas_event.dart';
part 'areas_state.dart';
part 'areas_bloc.freezed.dart';

class AreasBloc extends Bloc<AreasEvent, AreasState> {
  AreasBloc() : super(_Initial()) {
    on<_RequestAreas>(_onRequestAreas);
  }

  void _onRequestAreas(
    _RequestAreas event,
    Emit<AreasState> emit_dummy,
  ) async {
    try {
      emit(AreasState.inProgress());
      final sqlResults = await SqlHandler().queryAreas(event.country.land);
      final areas = sqlResults.map((sqlRow) => Area.fromJson(sqlRow)).toList();

      emit(AreasState.areasReceived(event.country, areas));
    } catch (e) {
      emit(AreasState.failure());
      emit(AreasState.areasReceived(event.country, []));
    }
  }
}
