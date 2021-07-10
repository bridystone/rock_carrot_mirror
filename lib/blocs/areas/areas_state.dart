part of 'areas_bloc.dart';

@freezed
class AreasState with _$AreasState {
  const factory AreasState.initial() = _Initial;
  const factory AreasState.inProgress() = _InProgress;
  const factory AreasState.areasReceived(
    Country country,
    List<Area> areas,
  ) = _AreasReceived;
  const factory AreasState.failure() = _Failure;
}
