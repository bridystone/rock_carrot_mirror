part of 'routes_bloc.dart';

@freezed
class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.requestRoutes(Rock rock) = _RequestRoutes;
  const factory RoutesEvent.invalidateRoutes() = _InvalidateRoutes;
}
