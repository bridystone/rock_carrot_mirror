part of 'subareas_bloc.dart';

@freezed
class SubareasState with _$SubareasState {
  const factory SubareasState.initial() = _Initial;
  const factory SubareasState.inProgress() = _InProgress;
  const factory SubareasState.subareasReceived(
    Area area,
    List<Subarea> subareas,
  ) = _SubareasReceived;
  const factory SubareasState.failure() = _Failure;
}
