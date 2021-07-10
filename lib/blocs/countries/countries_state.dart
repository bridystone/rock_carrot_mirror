part of 'countries_bloc.dart';

@freezed
class CountriesState with _$CountriesState {
  const factory CountriesState.initial() = _Initial;
  const factory CountriesState.inProgress() = _InProgress;
  const factory CountriesState.countriesReceived(List<Country> countries) =
      _CountriesReceived;
  const factory CountriesState.failure() = _Failure;
}
