import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';

part 'filtered_rocks_event.dart';
part 'filtered_rocks_state.dart';
part 'filtered_rocks_bloc.freezed.dart';

enum RocksSorting {
  unsorted,
  nameAscending,
  nameDescending,
  numberAscending,
  numberDescending
}

class FilteredRocksBloc extends Bloc<FilteredRocksEvent, FilteredRocksState> {
  final RocksBloc rocksBloc;
  late StreamSubscription subareasSubscription;

  FilteredRocksBloc(this.rocksBloc)
      : super(rocksBloc.isLoading
            ? FilteredRocksState.initial()
            : FilteredRocksState.readyForUI(
                rocksBloc.rocks,
                null,
                RocksSorting.numberAscending,
              )) {
    subareasSubscription = rocksBloc.stream.listen((state) {
      // listen to areas received state in areas bloc
      state.maybeWhen(
        rocksReceived: (area, rocks) {
          add(
            FilteredRocksEvent.rocksUpdated(rocks),
          );
        },
        orElse: () {
          return;
        },
      );
    });

    /// Handle Events
    on<_RocksUpdated>(_onRocksUpdated);
    on<_FilterUpdated>(_onFilterUpdated);
    on<_SortingUpdated>(_onSortingUpdated);
  }

  @override
  Future<void> close() {
    subareasSubscription.cancel();
    return super.close();
  }

  String? get currentFilter =>
      (state is _ReadyForUI) ? (state as _ReadyForUI).activeFilter : null;
  RocksSorting get currentSorting => (state is _ReadyForUI)
      ? (state as _ReadyForUI).activeSorting
      : RocksSorting.unsorted;

  void _onRocksUpdated(
    _RocksUpdated event,
    Emit<FilteredRocksState> emit,
  ) {
    if (rocksBloc.isLoaded) {
      emit(FilteredRocksState.readyForUI(
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
    Emit<FilteredRocksState> emit,
  ) {
    if (rocksBloc.isLoaded) {
      emit(FilteredRocksState.readyForUI(
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
    Emit<FilteredRocksState> emit,
  ) {
    if (rocksBloc.isLoaded) {
      emit(FilteredRocksState.readyForUI(
        _getFilterAndSortTodos(
          currentFilter,
          event.newSorting,
        ),
        currentFilter,
        event.newSorting,
      ));
    }
  }

  List<Rock> _getFilterAndSortTodos(
    String? filter,
    RocksSorting sorting,
  ) {
    final List<Rock> filteredRocks;
    // apply Filter
    if (filter != null) {
      filteredRocks = rocksBloc.rocks
          .where(
              (area) => area.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    } else {
      filteredRocks = rocksBloc.rocks;
    }

    switch (sorting) {
      case RocksSorting.nameAscending:
        filteredRocks.sort((a, b) => a.name.compareTo(b.name));
        break;
      case RocksSorting.nameDescending:
        filteredRocks.sort((a, b) => b.name.compareTo(a.name));
        break;
      case RocksSorting.numberAscending:
        filteredRocks.sort((a, b) => ((a.nr ?? 0) - (b.nr ?? 0)).toInt());
        break;
      case RocksSorting.numberDescending:
        filteredRocks.sort((a, b) => ((b.nr ?? 0) - (a.nr ?? 0)).toInt());
        break;
      case RocksSorting.unsorted:
    }
    return filteredRocks;
  }
}
