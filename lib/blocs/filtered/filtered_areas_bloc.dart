import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

class FilteredAreasBloc extends FilteredBaseBloc {
  FilteredAreasBloc(AreasBloc areasBloc) : super(areasBloc) {
    // initial Sorting
    add(FilteredBaseEventSortingUpdated(BaseSorting.nameAscending));
  }

  @override
  List<Area> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<Area>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting) {
      case BaseSorting.nameAscending:
        items.sort((a, b) => a.name.compareTo(b.name));
        break;
      case BaseSorting.nameDescending:
        items.sort((a, b) => b.name.compareTo(a.name));
        break;
      case BaseSorting.unsorted:
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;

    return items;
  }

  List<Area> _extractPinnedItems(List<Area> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where(
            (item) => jsonPersistence.persistence.pinnedAreas.contains(item.id))
        .map((item) => item.copyWith(isPinned: true))
        .toList();

    // remove from original list
    items.removeWhere(
        (item) => jsonPersistence.persistence.pinnedAreas.contains(item.id));

    return pinned;
  }

  @override
  void pinItem(Baseitem baseitem) {
    final jsonPersistence = JsonPersistence();
    if (baseitem is Area) {
      if (!jsonPersistence.persistence.pinnedAreas.remove(baseitem.id)) {
        jsonPersistence.persistence.pinnedAreas.add(baseitem.id);
      }
      jsonPersistence.storePersistence();
    } else {
      throw UnsupportedError('not a $runtimeType: $baseitem');
    }
  }
}
