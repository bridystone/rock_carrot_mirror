import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

part 'filtered_base_event.dart';
part 'filtered_base_state.dart';

enum BaseSorting { unsorted, nameAscending, nameDescending }

abstract class FilteredBaseBloc
    extends Bloc<FilteredBaseEvent, FilteredBaseState> {
  final BaseBloc baseBloc;
  late StreamSubscription baseitemSubscription;

  FilteredBaseBloc(this.baseBloc)
      : super(baseBloc.isLoading
            ? FilteredBaseStateInitial()
            : FilteredBaseStateReadyForUI(
                filteredItems: baseBloc.items,
                activeFilter: '',
                activeSorting: BaseSorting.nameAscending)) {
    baseitemSubscription = baseBloc.stream.listen((state) {
      // trigger Update event, when data is reloaded
      if (state is BaseStateDataReceived) {
        add(FilteredBaseEventDataUpdated(state.items));
      }
    });

    /// Handle Events
    on<FilteredBaseEventDataUpdated>(_onCountriesUpdated);
    on<FilteredBaseEventFilterUpdated>(_onFilterUpdated);
    on<FilteredBaseEventSortingUpdated>(_onSortingUpdated);
  }
  @override
  Future<void> close() {
    baseitemSubscription.cancel();
    return super.close();
  }

  void _onCountriesUpdated(
    FilteredBaseEventDataUpdated event,
    Emit<FilteredBaseState> emit,
  ) {
    if (baseBloc.isLoaded) {
      emit(FilteredBaseStateReadyForUI(
        filteredItems: getFilterAndSortTodos(
          currentFilter,
          currentSorting,
        ),
        activeFilter: currentFilter,
        activeSorting: currentSorting,
      ));
    }
  }

  void _onFilterUpdated(
    FilteredBaseEventFilterUpdated event,
    Emit<FilteredBaseState> emit,
  ) {
    if (baseBloc.isLoaded) {
      emit(FilteredBaseStateReadyForUI(
        filteredItems: getFilterAndSortTodos(
          event.newFilter,
          currentSorting,
        ),
        activeFilter: event.newFilter,
        activeSorting: currentSorting,
      ));
    }
  }

  void _onSortingUpdated(
    FilteredBaseEventSortingUpdated event,
    Emit<FilteredBaseState> emit,
  ) {
    if (baseBloc.isLoaded) {
      emit(FilteredBaseStateReadyForUI(
        filteredItems: getFilterAndSortTodos(
          currentFilter,
          event.newSorting,
        ),
        activeFilter: currentFilter,
        activeSorting: event.newSorting,
      ));
    }
  }

  List<Baseitem> getFilterAndSortTodos(
    String filter,
    dynamic sorting,
  );
  /* {
    var items = baseBloc.items;
    if (items is List<Country>) {
      items = filter.isEmpty
          ? items
          : items
              .where((item) =>
                  item.name.toLowerCase().contains(filter.toLowerCase()))
              .toList();
      switch (sorting) {
        case BaseSorting.nameAscending:
          items.sort((a, b) => a.name.compareTo(b.name));
          break;
        case BaseSorting.nameDescending:
          items.sort((a, b) => b.name.compareTo(a.name));
          break;
        case BaseSorting.unsorted:
      }
    } else if (items is List<Area>) {
      items = filter.isEmpty
          ? items
          : items
              .where((item) =>
                  item.name.toLowerCase().contains(filter.toLowerCase()))
              .toList();
      switch (sorting) {
        case BaseSorting.nameAscending:
          items.sort((a, b) => a.name.compareTo(b.name));
          break;
        case BaseSorting.nameDescending:
          items.sort((a, b) => b.name.compareTo(a.name));
          break;
        case BaseSorting.unsorted:
      }
    } else if (items is List<Subarea>) {
      items = filter.isEmpty
          ? items
          : items
              .where((item) =>
                  item.name.toLowerCase().contains(filter.toLowerCase()))
              .toList();
      switch (sorting) {
        case BaseSorting.nameAscending:
          items.sort((a, b) => a.name.compareTo(b.name));
          break;
        case BaseSorting.nameDescending:
          items.sort((a, b) => b.name.compareTo(a.name));
          break;
        case BaseSorting.unsorted:
      }
    } else if (items is List<Rock>) {
      items = filter.isEmpty
          ? items
          : items
              .where((item) =>
                  item.name.toLowerCase().contains(filter.toLowerCase()))
              .toList();
      switch (sorting) {
        case BaseSorting.nameAscending:
          items.sort((a, b) => a.name.compareTo(b.name));
          break;
        case BaseSorting.nameDescending:
          items.sort((a, b) => b.name.compareTo(a.name));
          break;
        case BaseSorting.unsorted:
      }
    } else if (items is List<Route>) {
      items = filter.isEmpty
          ? items
          : items
              .where((item) =>
                  item.name.toLowerCase().contains(filter.toLowerCase()))
              .toList();
      switch (sorting) {
        case BaseSorting.nameAscending:
          items.sort((a, b) => a.name.compareTo(b.name));
          break;
        case BaseSorting.nameDescending:
          items.sort((a, b) => b.name.compareTo(a.name));
          break;
        case BaseSorting.unsorted:
      }
    }

    return items;
  }*/

  String get currentFilter => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeFilter
      : '';
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : BaseSorting.unsorted;
}
