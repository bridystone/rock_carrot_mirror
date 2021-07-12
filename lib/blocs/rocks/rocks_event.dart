part of 'rocks_bloc.dart';

@freezed
class RocksEvent with _$RocksEvent {
  const factory RocksEvent.requestRocks(Subarea subarea) = _RequestRocks;
  const factory RocksEvent.updateRocks(Subarea subarea) = _UpdateRocks;
  const factory RocksEvent.updateRocksTT(Subarea subarea) = _UpdateRocksTT;

  const factory RocksEvent.invalidateRocks() = _InvalidateRocks;
}
