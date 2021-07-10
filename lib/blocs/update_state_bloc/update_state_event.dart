part of 'update_state_bloc.dart';

@freezed
class UpdateStateEvent with _$UpdateStateEvent {
  const factory UpdateStateEvent.updateCountries() = _UpdateCountries;
  const factory UpdateStateEvent.updateAreas(Country country) = _UpdateAreas;
}
