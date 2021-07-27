part of 'routes_bloc.dart';

@freezed
class RoutesState with _$RoutesState {
  const factory RoutesState.initial() = _Initial;
  const factory RoutesState.inProgress() = _InProgress;
  const factory RoutesState.routesReceived(
    Rock rock,
    List<Route> routes,
  ) = _RoutesReceived;
  const factory RoutesState.failure() = _Failure;
}
