import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';

part 'filtered_areas_event.dart';
part 'filtered_areas_state.dart';
part 'filtered_areas_bloc.freezed.dart';

enum AreasSorting { unsorted, ascending, descending }

class FilteredAreasBloc extends Bloc<FilteredAreasEvent, FilteredAreasState> {
  final AreasBloc areasBloc;
  late StreamSubscription areasSubscription;

  FilteredAreasBloc(this.areasBloc)
      : super(areasBloc.isLoading
            ? FilteredAreasState.initial()
            : FilteredAreasState.readyForUI(
                areasBloc.areas,
                null,
                AreasSorting.unsorted,
              )) {
    areasSubscription = areasBloc.stream.listen((state) {
      // listen to areas received state in areas bloc
      state.maybeWhen(
        areasReceived: (country, areas) {
          add(
            FilteredAreasEvent.areasUpdated(areas),
          );
        },
        orElse: () {
          return;
        },
      );
    });

    /// Handle Events
    on<_AreasUpdated>(_onAreasUpdated);
    on<_FilterUpdated>(_onFilterUpdated);
    on<_SortingUpdated>(_onSortingUpdated);
  }

  @override
  Future<void> close() {
    areasSubscription.cancel();
    return super.close();
  }

  String? get currentFilter =>
      (state is _ReadyForUI) ? (state as _ReadyForUI).activeFilter : null;
  AreasSorting get currentSorting => (state is _ReadyForUI)
      ? (state as _ReadyForUI).activeSorting
      : AreasSorting.unsorted;

  void _onAreasUpdated(
    _AreasUpdated event,
    Emit<FilteredAreasState> emit,
  ) {
    if (areasBloc.isLoaded) {
      emit(FilteredAreasState.readyForUI(
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
    Emit<FilteredAreasState> emit,
  ) {
    if (areasBloc.isLoaded) {
      emit(FilteredAreasState.readyForUI(
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
    Emit<FilteredAreasState> emit,
  ) {
    if (areasBloc.isLoaded) {
      emit(FilteredAreasState.readyForUI(
        _getFilterAndSortTodos(
          currentFilter,
          event.newSorting,
        ),
        currentFilter,
        event.newSorting,
      ));
    }
  }

  List<Area> _getFilterAndSortTodos(
    String? filter,
    AreasSorting sorting,
  ) {
    final List<Area> filteredAreas;
    // apply Filter
    if (filter != null) {
      filteredAreas = areasBloc.areas
          .where(
              (area) => area.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    } else {
      filteredAreas = areasBloc.areas;
    }

    switch (sorting) {
      case AreasSorting.ascending:
        filteredAreas.sort((a, b) => a.name.compareTo(b.name));
        break;
      case AreasSorting.descending:
        filteredAreas.sort((a, b) => b.name.compareTo(a.name));
        break;
      case AreasSorting.unsorted:
    }
    return filteredAreas;
  }
}
