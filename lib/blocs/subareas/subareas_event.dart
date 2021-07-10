part of 'subareas_bloc.dart';

@freezed
class SubareasEvent with _$SubareasEvent {
  const factory SubareasEvent.requestSubareas(Area area) = _RequestSubareas;
  const factory SubareasEvent.invalidateSubareas() = _InvalidateSubareas;
}
