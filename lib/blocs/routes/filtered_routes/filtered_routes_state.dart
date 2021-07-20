part of 'filtered_routes_bloc.dart';

@freezed
class FilteredRoutesState with _$FilteredRoutesState {
  const factory FilteredRoutesState.initial() = _Initial;

  const factory FilteredRoutesState.readyForUI(
    List<Route> filteredRoutes,
    String? activeFilter,
    RoutesSorting activeSorting,
  ) = _ReadyForUI;
}
