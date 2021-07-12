part of 'countries_bloc.dart';

@freezed
class CountriesState with _$CountriesState {
  const factory CountriesState.initial() = _Initial;
  const factory CountriesState.inProgress() = _InProgress;
  const factory CountriesState.countriesReceived(List<Country> countries) =
      _CountriesReceived;
  // Update
  const factory CountriesState.updateInProgress(
    String step,
    int percent,
  ) = _UpdateInProgress;
  const factory CountriesState.updateFinished(
    int result,
  ) = _UpdateFinished;

  const factory CountriesState.failure(dynamic execption) = _Failure;
}
