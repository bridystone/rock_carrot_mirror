import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

part 'filtered_routes_event.dart';
part 'filtered_routes_state.dart';
part 'filtered_routes_bloc.freezed.dart';

enum RoutesSorting {
  unsorted,
  nameAscending,
  nameDescending,
  numberAscending,
  numberDescending,
  difficultyAscending,
  difficuktyDescending,
}

class FilteredRoutesBloc
    extends Bloc<FilteredRoutesEvent, FilteredRoutesState> {
  final RoutesBloc routesBloc;
  late StreamSubscription rocksSubscription;

  FilteredRoutesBloc(this.routesBloc)
      : super(routesBloc.isLoading
            ? FilteredRoutesState.initial()
            : FilteredRoutesState.readyForUI(
                routesBloc.routes,
                null,
                RoutesSorting.unsorted,
              )) {
    rocksSubscription = routesBloc.stream.listen((state) {
      // listen to areas received state in areas bloc
      state.maybeWhen(
        routesReceived: (area, routes) {
          add(
            FilteredRoutesEvent.routesUpdated(routes),
          );
        },
        orElse: () {
          return;
        },
      );
    });

    /// Handle Events
    on<_RoutesUpdated>(_onRoutesUpdated);
    on<_FilterUpdated>(_onFilterUpdated);
    on<_SortingUpdated>(_onSortingUpdated);
  }

  @override
  Future<void> close() {
    rocksSubscription.cancel();
    return super.close();
  }

  String? get currentFilter =>
      (state is _ReadyForUI) ? (state as _ReadyForUI).activeFilter : null;
  RoutesSorting get currentSorting => (state is _ReadyForUI)
      ? (state as _ReadyForUI).activeSorting
      : RoutesSorting.unsorted;

  void _onRoutesUpdated(
    _RoutesUpdated event,
    Emit<FilteredRoutesState> emit,
  ) {
    if (routesBloc.isLoaded) {
      emit(FilteredRoutesState.readyForUI(
        _getFilterAndSortTodos(
          currentFilter,
          currentSorting,
        ),
        currentFilter,
        currentSorting,
      ));
    }
  }

  void _onFilterUpdated(
    _FilterUpdated event,
    Emit<FilteredRoutesState> emit,
  ) {
    if (routesBloc.isLoaded) {
      emit(FilteredRoutesState.readyForUI(
        _getFilterAndSortTodos(
          event.newFilter,
          currentSorting,
        ),
        event.newFilter,
        currentSorting,
      ));
    }
  }

  void _onSortingUpdated(
    _SortingUpdated event,
    Emit<FilteredRoutesState> emit,
  ) {
    if (routesBloc.isLoaded) {
      emit(FilteredRoutesState.readyForUI(
        _getFilterAndSortTodos(
          currentFilter,
          event.newSorting,
        ),
        currentFilter,
        event.newSorting,
      ));
    }
  }

  List<Route> _getFilterAndSortTodos(
    String? filter,
    RoutesSorting sorting,
  ) {
    final List<Route> filteredRoutes;
    // apply Filter
    if (filter != null) {
      filteredRoutes = routesBloc.routes
          .where(
              (area) => area.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    } else {
      filteredRoutes = routesBloc.routes;
    }

    switch (sorting) {
      case RoutesSorting.nameAscending:
        filteredRoutes.sort((a, b) => a.name.compareTo(b.name));
        break;
      case RoutesSorting.nameDescending:
        filteredRoutes.sort((a, b) => b.name.compareTo(a.name));
        break;
      case RoutesSorting.numberAscending:
        filteredRoutes.sort((a, b) => ((a.nr ?? 0) - (b.nr ?? 0)).toInt());
        break;
      case RoutesSorting.numberDescending:
        filteredRoutes.sort((a, b) => ((b.nr ?? 0) - (a.nr ?? 0)).toInt());
        break;
      case RoutesSorting.difficultyAscending:
        filteredRoutes.sort((a, b) => (a.difficulty.sortableDifficulty -
            b.difficulty.sortableDifficulty));
        break;
      case RoutesSorting.difficuktyDescending:
        filteredRoutes.sort((a, b) => (b.difficulty.sortableDifficulty -
            a.difficulty.sortableDifficulty));
        break;
      case RoutesSorting.unsorted:
    }
    return filteredRoutes;
  }
}
