part of 'subareas_bloc.dart';

@freezed
class SubareasEvent with _$SubareasEvent {
  const factory SubareasEvent.requestSubareas(Area area) = _RequestSubareas;
  const factory SubareasEvent.updateSubareas(Area area) = _UpdateSubareas;
  const factory SubareasEvent.updateSubareasInklSubitems(Area area) =
      _UpdateSubareasInklSubitems;
  const factory SubareasEvent.invalidateSubareas() = _InvalidateSubareas;
}
