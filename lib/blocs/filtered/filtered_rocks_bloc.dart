import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

enum RockSorting {
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
  List<RockBloc> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<RockBloc>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting as RockSorting) {
      case RockSorting.nameAscending:
        items.sort((a, b) => a.item.name.compareTo(b.item.name));
        break;
      case RockSorting.nameDescending:
        items.sort((a, b) => b.item.name.compareTo(a.item.name));
        break;
      case RockSorting.numberAscending:
        items.sort(
            (a, b) => ((a.item.nr ?? 0) * 10 - (b.item.nr ?? 0) * 10).toInt());
        break;
      case RockSorting.numberDescending:
        items.sort(
            (a, b) => ((b.item.nr ?? 0) * 10 - (a.item.nr ?? 0) * 10).toInt());
        break;
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;
    return items;
  }

  List<RockBloc> _extractPinnedItems(List<RockBloc> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedRocks.contains(item.item.id))
        .map((item) => item.copyWith(item: item.item.copyWith(isPinned: true)))
        .toList();

    // remove from original list
    items.removeWhere((item) =>
        jsonPersistence.persistence.pinnedRocks.contains(item.item.id));

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
