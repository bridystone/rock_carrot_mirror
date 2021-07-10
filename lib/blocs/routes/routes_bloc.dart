import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_routes.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

part 'routes_event.dart';
part 'routes_state.dart';
part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(_Initial()) {
    on<_RequestRoutes>(_onRequestRoutes);
    on<_InvalidateRoutes>((event, emit_dummy) => emit(RoutesState.initial()));
  }

  void _onRequestRoutes(
    _RequestRoutes event,
    Emit<RoutesState> emit_dummy,
  ) async {
    try {
      emit(RoutesState.inProgress());
      final sqlResults = await SqlHandler().queryRoutes(event.rock.gipfelId);
      final routes =
          sqlResults.map((sqlRow) => Route.fromJson(sqlRow)).toList();

      emit(RoutesState.routesReceived(event.rock, routes));
    } catch (e) {
      emit(RoutesState.failure());
      emit(RoutesState.routesReceived(event.rock, []));
    }
  }
}
