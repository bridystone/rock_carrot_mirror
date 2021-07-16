part of 'filtered_countries_bloc.dart';

@freezed
class FilteredCountriesState with _$FilteredCountriesState {
  const factory FilteredCountriesState.initial() = _Initial;
  const factory FilteredCountriesState.readyForUI(
    List<Country> filteredTodos,
    String? activeFilter,
    CountriesSorting activeSorting,
  ) = _ReadyForUI;
}
