import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

class FilteredAreasBloc extends FilteredBaseBloc {
  FilteredAreasBloc(AreasBloc areasBloc) : super(areasBloc) {
    // initial Sorting
    add(FilteredBaseEventSortingUpdated(BaseSorting.nameAscending));
  }

  @override
  List<AreaBloc> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<AreaBloc>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting) {
      case BaseSorting.nameAscending:
        items.sort((a, b) => a.item.name.compareTo(b.item.name));
        break;
      case BaseSorting.nameDescending:
        items.sort((a, b) => b.item.name.compareTo(a.item.name));
        break;
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;

    return items;
  }

  List<AreaBloc> _extractPinnedItems(List<AreaBloc> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedAreas.contains(item.item.id))
        .map((item) => item.copyWith(item: item.item.copyWith(isPinned: true)))
        .toList();

    // remove from original list
    items.removeWhere((item) =>
        jsonPersistence.persistence.pinnedAreas.contains(item.item.id));

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
