part of 'filtered_countries_bloc.dart';

@freezed
class FilteredCountriesEvent with _$FilteredCountriesEvent {
  const factory FilteredCountriesEvent.filterUpdated(
    String? newFilter,
  ) = _FilterUpdated;
  const factory FilteredCountriesEvent.sortingUpdated(
    CountriesSorting newSorting,
  ) = _SortingUpdated;
  const factory FilteredCountriesEvent.countriesUpdated(
    List<Country> countries,
  ) = _CountriesUpdated;
}
