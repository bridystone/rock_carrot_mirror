import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

enum SubareaSorting {
  unsorted,
  nameAscending,
  nameDescending,
  numberAscending,
  numberDescending,
}

class FilteredSubareasBloc extends FilteredBaseBloc {
  FilteredSubareasBloc(SubareasBloc subareasBloc) : super(subareasBloc) {
    // initial Sorting + introduce special Sorting
    add(FilteredBaseEventSortingUpdated(SubareaSorting.numberAscending));
  }

  @override
  List<Subarea> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<Subarea>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting as SubareaSorting) {
      case SubareaSorting.nameAscending:
        items.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SubareaSorting.nameDescending:
        items.sort((a, b) => b.name.compareTo(a.name));
        break;
      case SubareaSorting.numberAscending:
        items.sort((a, b) => ((a.nr ?? 0) * 10 - (b.nr ?? 0) * 10).toInt());
        break;
      case SubareaSorting.numberDescending:
        items.sort((a, b) => ((b.nr ?? 0) * 10 - (a.nr ?? 0) * 10).toInt());
        break;
      case SubareaSorting.unsorted:
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;
    return items;
  }

  List<Subarea> _extractPinnedItems(List<Subarea> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedSubareas.contains(item.id))
        .map((item) => item.copyWith(isPinned: true))
        .toList();

    // remove from original list
    items.removeWhere(
        (item) => jsonPersistence.persistence.pinnedSubareas.contains(item.id));

    return pinned;
  }

  @override
  void pinItem(Baseitem baseitem) {
    final jsonPersistence = JsonPersistence();
    if (baseitem is Subarea) {
      if (!jsonPersistence.persistence.pinnedSubareas.remove(baseitem.id)) {
        jsonPersistence.persistence.pinnedSubareas.add(baseitem.id);
      }
      jsonPersistence.storePersistence();
    } else {
      throw UnsupportedError('not a $runtimeType: $baseitem');
    }
  }

  @override
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : SubareaSorting.numberAscending;
}
