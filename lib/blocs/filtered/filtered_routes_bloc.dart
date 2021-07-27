import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

enum RouteSorting {
  unsorted,
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
  List<Route> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<Route>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting as RouteSorting) {
      case RouteSorting.nameAscending:
        items.sort((a, b) => a.name.compareTo(b.name));
        break;
      case RouteSorting.nameDescending:
        items.sort((a, b) => b.name.compareTo(a.name));
        break;
      case RouteSorting.numberAscending:
        items.sort((a, b) => ((a.nr ?? 0) * 10 - (b.nr ?? 0) * 10).toInt());
        break;
      case RouteSorting.numberDescending:
        items.sort((a, b) => ((b.nr ?? 0) * 10 - (a.nr ?? 0) * 10).toInt());
        break;
      case RouteSorting.difficultyAscending:
        items.sort((a, b) =>
            a.difficulty.sortableDifficulty - b.difficulty.sortableDifficulty);
        break;
      case RouteSorting.difficultyDescending:
        items.sort((a, b) =>
            b.difficulty.sortableDifficulty - a.difficulty.sortableDifficulty);
        break;

      case RouteSorting.unsorted:
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;
    return items;
  }

  List<Route> _extractPinnedItems(List<Route> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedRoutes.contains(item.id))
        .map((item) => item.copyWith(isPinned: true))
        .toList();

    // remove from original list
    items.removeWhere(
        (item) => jsonPersistence.persistence.pinnedRoutes.contains(item.id));

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
