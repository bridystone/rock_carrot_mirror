import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';

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
        add(FilteredBaseEventDataUpdated(state.blocedItems));
      }
    });

    /// Handle Events
    on<FilteredBaseEventDataUpdated>(_onCountriesUpdated);
    on<FilteredBaseEventFilterUpdated>(_onFilterUpdated);
    on<FilteredBaseEventSortingUpdated>(_onSortingUpdated);
    on<FilteredBaseEventPinItem>(_onPinItem);
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
        filteredItems: getFilterAndSortItems(
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
        filteredItems: getFilterAndSortItems(
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
        filteredItems: getFilterAndSortItems(
          currentFilter,
          event.newSorting,
        ),
        activeFilter: currentFilter,
        activeSorting: event.newSorting,
      ));
    }
  }

  void _onPinItem(
    FilteredBaseEventPinItem event,
    Emit<FilteredBaseState> emit,
  ) async {
    pinItem(event.pinBaseitem);

    // refresh Sorting
    add(FilteredBaseEventSortingUpdated(currentSorting));
  }

  /*
  abstract functions
  */
  void pinItem(Baseitem baseitem);

  List<BaseitemBloc> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  );

  /*
  SUPPORT methods
  */
  String get currentFilter => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeFilter
      : '';
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : BaseSorting.unsorted;
}
