part of 'areas_bloc.dart';

@freezed
class AreasEvent with _$AreasEvent {
  const factory AreasEvent.requestAreas(Country country) = _RequestAreas;
}
