part of 'areas_bloc.dart';

@freezed
class AreasState with _$AreasState {
  const factory AreasState.initial() = _Initial;
  const factory AreasState.inProgress() = _InProgress;
  const factory AreasState.areasReceived(
    Country country,
    List<Area> areas,
  ) = _AreasReceived;

  // Update
  const factory AreasState.updateInProgress(
    String step,
    int percent,
  ) = _UpdateInProgress;
  const factory AreasState.updateFinished(
    int result,
  ) = _UpdateFinished;

  const factory AreasState.failure(dynamic exception) = _Failure;
}
