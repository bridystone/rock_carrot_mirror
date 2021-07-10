part of 'update_state_bloc.dart';

@freezed
class UpdateStateState with _$UpdateStateState {
  const factory UpdateStateState.idle() = _Idle;
  // Update
  const factory UpdateStateState.updating(
    String step,
    int percent,
  ) = _Updating;
  const factory UpdateStateState.finished(
    int result,
  ) = _Finished;
  // UpdateAll inkl. subitems
  const factory UpdateStateState.updatingAll(
    String step,
    int percent,
  ) = _UpdatingAll;
  const factory UpdateStateState.finishedAll(
    int result,
  ) = _FinishedAll;
  // Update Teufelsturm
  const factory UpdateStateState.updatingTT(
    String step,
    int percent,
  ) = _UpdatingTT;
  const factory UpdateStateState.finishedTT(
    int result,
  ) = _FinishedTT;
  // general Failure
  const factory UpdateStateState.failure(
    dynamic exception,
  ) = _Failure;
}
