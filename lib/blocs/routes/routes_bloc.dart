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
    on<_InvalidateRoutes>((event, emit) => emit(RoutesState.initial()));
  }

  void _onRequestRoutes(
    _RequestRoutes event,
    Emit<RoutesState> emit,
  ) async {
    try {
      emit(RoutesState.inProgress());
      final sqlResults = await SqlHandler().queryRoutes(event.rock.id);
      final routes =
          sqlResults.map((sqlRow) => Route.fromJson(sqlRow)).toList();

      emit(RoutesState.routesReceived(event.rock, routes));
    } catch (e) {
      emit(RoutesState.failure());
      emit(RoutesState.routesReceived(event.rock, []));
    }
  }

  Rock? get getRockOrNull => state.maybeWhen(
        routesReceived: (rock, routes) => rock,
        orElse: () => null,
      );

  /// return state for filitered Bloc
  bool get isLoading => state is! _RoutesReceived;

  /// return state for filitered Bloc
  bool get isLoaded => state is _RoutesReceived;

  /// return countries for FilteredBloc
  List<Route> get routes =>
      (state is _RoutesReceived) ? (state as _RoutesReceived).routes : [];
}
