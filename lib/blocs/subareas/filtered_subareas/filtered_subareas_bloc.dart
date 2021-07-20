import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

part 'filtered_subareas_event.dart';
part 'filtered_subareas_state.dart';
part 'filtered_subareas_bloc.freezed.dart';

enum SubareasSorting {
  unsorted,
  nameAscending,
  nameDescending,
  numberAscending,
  numberDescending,
}

class FilteredSubareasBloc
    extends Bloc<FilteredSubareasEvent, FilteredSubareasState> {
  final SubareasBloc subareasBloc;
  late StreamSubscription areasSubscription;

  FilteredSubareasBloc(this.subareasBloc)
      : super(subareasBloc.isLoading
            ? FilteredSubareasState.initial()
            : FilteredSubareasState.readyForUI(
                subareasBloc.subareas,
                null,
                SubareasSorting.numberAscending,
              )) {
    areasSubscription = subareasBloc.stream.listen((state) {
      // listen to areas received state in areas bloc
      state.maybeWhen(
        subareasReceived: (area, subareas) {
          add(
            FilteredSubareasEvent.subareasUpdated(subareas),
          );
        },
        orElse: () {
          return;
        },
      );
    });

    /// Handle Events
    on<_SubareasUpdated>(_onSubareasUpdated);
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
  SubareasSorting get currentSorting => (state is _ReadyForUI)
      ? (state as _ReadyForUI).activeSorting
      : SubareasSorting.unsorted;

  void _onSubareasUpdated(
    _SubareasUpdated event,
    Emit<FilteredSubareasState> emit,
  ) {
    if (subareasBloc.isLoaded) {
      emit(FilteredSubareasState.readyForUI(
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
    Emit<FilteredSubareasState> emit,
  ) {
    if (subareasBloc.isLoaded) {
      emit(FilteredSubareasState.readyForUI(
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
    Emit<FilteredSubareasState> emit,
  ) {
    if (subareasBloc.isLoaded) {
      emit(FilteredSubareasState.readyForUI(
        _getFilterAndSortTodos(
          currentFilter,
          event.newSorting,
        ),
        currentFilter,
        event.newSorting,
      ));
    }
  }

  List<Subarea> _getFilterAndSortTodos(
    String? filter,
    SubareasSorting sorting,
  ) {
    final List<Subarea> filteredSubareas;
    // apply Filter
    if (filter != null) {
      filteredSubareas = subareasBloc.subareas
          .where(
              (area) => area.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    } else {
      filteredSubareas = subareasBloc.subareas;
    }

    switch (sorting) {
      case SubareasSorting.nameAscending:
        filteredSubareas.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SubareasSorting.nameDescending:
        filteredSubareas.sort((a, b) => b.name.compareTo(a.name));
        break;
      case SubareasSorting.numberAscending:
        filteredSubareas.sort((a, b) => ((a.nr ?? 0) - (b.nr ?? 0)).toInt());
        break;
      case SubareasSorting.numberDescending:
        filteredSubareas.sort((a, b) => ((b.nr ?? 0) - (a.nr ?? 0)).toInt());
        break;
      case SubareasSorting.unsorted:
    }
    return filteredSubareas;
  }
}
