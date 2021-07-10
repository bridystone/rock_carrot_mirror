part of 'rocks_bloc.dart';

@freezed
class RocksState with _$RocksState {
  const factory RocksState.initial() = _Initial;
  const factory RocksState.inProgress() = _InProgress;
  const factory RocksState.rocksReceived(
    Subarea subarea,
    List<Rock> rocks,
  ) = _RocksReceived;
  const factory RocksState.failure() = _Failure;
}
