part of 'rocks_bloc.dart';

@freezed
class RocksState with _$RocksState {
  const factory RocksState.initial() = _Initial;

  const factory RocksState.inProgress() = _InProgress;
  const factory RocksState.rocksReceived(
    Subarea subarea,
    List<Rock> rocks,
  ) = _RocksReceived;
  // Update
  const factory RocksState.updateInProgress(
    String step,
    int percent,
  ) = _UpdateInProgress;
  const factory RocksState.updateFinished(
    int result,
  ) = _UpdateFinished;

  const factory RocksState.failure(dynamic exception) = _Failure;
}
