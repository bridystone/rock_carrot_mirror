part of 'subareas_bloc.dart';

@freezed
class SubareasState with _$SubareasState {
  const factory SubareasState.initial() = _Initial;
  const factory SubareasState.inProgress() = _InProgress;
  const factory SubareasState.subareasReceived(
    Area area,
    List<Subarea> subareas,
  ) = _SubareasReceived;
  // Update
  const factory SubareasState.updateInProgress(
    String step,
    int percent,
  ) = _UpdateInProgress;
  const factory SubareasState.updateFinished(
    int result,
  ) = _UpdateFinished;

  const factory SubareasState.failure(dynamic exception) = _Failure;
}
