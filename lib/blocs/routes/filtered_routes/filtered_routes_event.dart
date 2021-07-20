part of 'filtered_routes_bloc.dart';

@freezed
class FilteredRoutesEvent with _$FilteredRoutesEvent {
  const factory FilteredRoutesEvent.filterUpdated(
    String? newFilter,
  ) = _FilterUpdated;
  const factory FilteredRoutesEvent.sortingUpdated(
    RoutesSorting newSorting,
  ) = _SortingUpdated;
  const factory FilteredRoutesEvent.routesUpdated(
    List<Route> routes,
  ) = _RoutesUpdated;
}
