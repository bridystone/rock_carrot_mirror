import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

enum RouteSorting {
  nameAscending,
  nameDescending,
  numberAscending,
  numberDescending,
  difficultyAscending,
  difficultyDescending,
}

class FilteredRoutesBloc extends FilteredBaseBloc {
  FilteredRoutesBloc(RoutesBloc routesBloc) : super(routesBloc) {
    // initial Sorting + introduce special Sorting
    add(FilteredBaseEventSortingUpdated(RouteSorting.numberAscending));
  }

  @override
  List<RouteBloc> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<RouteBloc>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting as RouteSorting) {
      case RouteSorting.nameAscending:
        items.sort((a, b) => a.item.name.compareTo(b.item.name));
        break;
      case RouteSorting.nameDescending:
        items.sort((a, b) => b.item.name.compareTo(a.item.name));
        break;
      case RouteSorting.numberAscending:
        items.sort(
            (a, b) => ((a.item.nr ?? 0) * 10 - (b.item.nr ?? 0) * 10).toInt());
        break;
      case RouteSorting.numberDescending:
        items.sort(
            (a, b) => ((b.item.nr ?? 0) * 10 - (a.item.nr ?? 0) * 10).toInt());
        break;
      case RouteSorting.difficultyAscending:
        items.sort((a, b) =>
            a.item.difficulty.sortableDifficulty -
            b.item.difficulty.sortableDifficulty);
        break;
      case RouteSorting.difficultyDescending:
        items.sort((a, b) =>
            b.item.difficulty.sortableDifficulty -
            a.item.difficulty.sortableDifficulty);
        break;
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;
    return items;
  }

  List<RouteBloc> _extractPinnedItems(List<RouteBloc> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedRoutes.contains(item.item.id))
        .map((item) => item.copyWith(item: item.item.copyWith(isPinned: true)))
        .toList();

    // remove from original list
    items.removeWhere((item) =>
        jsonPersistence.persistence.pinnedRoutes.contains(item.item.id));

    return pinned;
  }

  @override
  void pinItem(Baseitem baseitem) {
    final jsonPersistence = JsonPersistence();
    if (baseitem is Route) {
      if (!jsonPersistence.persistence.pinnedRoutes.remove(baseitem.id)) {
        jsonPersistence.persistence.pinnedRoutes.add(baseitem.id);
      }
      jsonPersistence.storePersistence();
    } else {
      throw UnsupportedError('not a $runtimeType: $baseitem');
    }
  }

  @override
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : RouteSorting.numberAscending;
}
