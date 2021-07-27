import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

enum RockSorting {
  unsorted,
  nameAscending,
  nameDescending,
  numberAscending,
  numberDescending,
}

class FilteredRocksBloc extends FilteredBaseBloc {
  FilteredRocksBloc(RocksBloc rocksBloc) : super(rocksBloc) {
    // initial Sorting + introduce special Sorting
    add(FilteredBaseEventSortingUpdated(RockSorting.numberAscending));
  }

  @override
  List<Rock> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<Rock>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting as RockSorting) {
      case RockSorting.nameAscending:
        items.sort((a, b) => a.name.compareTo(b.name));
        break;
      case RockSorting.nameDescending:
        items.sort((a, b) => b.name.compareTo(a.name));
        break;
      case RockSorting.numberAscending:
        items.sort((a, b) => ((a.nr ?? 0) * 10 - (b.nr ?? 0) * 10).toInt());
        break;
      case RockSorting.numberDescending:
        items.sort((a, b) => ((b.nr ?? 0) * 10 - (a.nr ?? 0) * 10).toInt());
        break;

      case RockSorting.unsorted:
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;
    return items;
  }

  List<Rock> _extractPinnedItems(List<Rock> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where(
            (item) => jsonPersistence.persistence.pinnedRocks.contains(item.id))
        .map((item) => item.copyWith(isPinned: true))
        .toList();

    // remove from original list
    items.removeWhere(
        (item) => jsonPersistence.persistence.pinnedRocks.contains(item.id));

    return pinned;
  }

  @override
  void pinItem(Baseitem baseitem) {
    final jsonPersistence = JsonPersistence();
    if (baseitem is Rock) {
      if (!jsonPersistence.persistence.pinnedRocks.remove(baseitem.id)) {
        jsonPersistence.persistence.pinnedRocks.add(baseitem.id);
      }
      jsonPersistence.storePersistence();
    } else {
      throw UnsupportedError('not a $runtimeType: $baseitem');
    }
  }

  @override
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : RockSorting.numberAscending;
}
