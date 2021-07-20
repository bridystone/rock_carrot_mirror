import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

part 'filtered_countries_event.dart';
part 'filtered_countries_state.dart';
part 'filtered_countries_bloc.freezed.dart';

enum CountriesSorting { unsorted, ascending, descending }

class FilteredCountriesBloc
    extends Bloc<FilteredCountriesEvent, FilteredCountriesState> {
  final CountriesBloc countriesBloc;
  late StreamSubscription countriesSubscription;

  FilteredCountriesBloc(this.countriesBloc)
      : super(countriesBloc.isLoading
            ? FilteredCountriesState.initial()
            : FilteredCountriesState.readyForUI(
                countriesBloc.countries,
                null,
                CountriesSorting.unsorted,
              )) {
    countriesSubscription = countriesBloc.stream.listen((state) {
      // listen to countries received state in Countries bloc
      state.maybeWhen(
        countriesReceived: (countries) {
          add(
            FilteredCountriesEvent.countriesUpdated(countries),
          );
        },
        orElse: () {
          return;
        },
      );
    });

    /// Handle Events
    on<_CountriesUpdated>(_onCountriesUpdated);
    on<_FilterUpdated>(_onFilterUpdated);
    on<_SortingUpdated>(_onSortingUpdated);
  }
  @override
  Future<void> close() {
    countriesSubscription.cancel();
    return super.close();
  }

  String? get currentFilter =>
      (state is _ReadyForUI) ? (state as _ReadyForUI).activeFilter : null;
  CountriesSorting get currentSorting => (state is _ReadyForUI)
      ? (state as _ReadyForUI).activeSorting
      : CountriesSorting.unsorted;

  void _onCountriesUpdated(
    _CountriesUpdated event,
    Emit<FilteredCountriesState> emit,
  ) {
    if (countriesBloc.isLoaded) {
      emit(FilteredCountriesState.readyForUI(
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
    Emit<FilteredCountriesState> emit,
  ) {
    if (countriesBloc.isLoaded) {
      emit(FilteredCountriesState.readyForUI(
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
    Emit<FilteredCountriesState> emit,
  ) {
    if (countriesBloc.isLoaded) {
      emit(FilteredCountriesState.readyForUI(
        _getFilterAndSortTodos(
          currentFilter,
          event.newSorting,
        ),
        currentFilter,
        event.newSorting,
      ));
    }
  }

  List<Country> _getFilterAndSortTodos(
    String? filter,
    CountriesSorting sorting,
  ) {
    final List<Country> filteredCountries;
    // apply Filter
    if (filter != null) {
      filteredCountries = countriesBloc.countries
          .where((country) =>
              country.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    } else {
      filteredCountries = countriesBloc.countries;
    }

    switch (sorting) {
      case CountriesSorting.ascending:
        filteredCountries.sort((a, b) => a.name.compareTo(b.name));
        break;
      case CountriesSorting.descending:
        filteredCountries.sort((a, b) => b.name.compareTo(a.name));
        break;
      case CountriesSorting.unsorted:
    }
    return filteredCountries;
  }
}
