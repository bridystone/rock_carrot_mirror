import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

enum SubareaSorting {
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
  List<SubareaBloc> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<SubareaBloc>.from(baseBloc.items);

    items = filter.isEmpty
        ? items
        : items
            .where((item) =>
                item.item.name.toLowerCase().contains(filter.toLowerCase()))
            .toList();

    switch (sorting as SubareaSorting) {
      case SubareaSorting.nameAscending:
        items.sort((a, b) => a.item.name.compareTo(b.item.name));
        break;
      case SubareaSorting.nameDescending:
        items.sort((a, b) => b.item.name.compareTo(a.item.name));
        break;
      case SubareaSorting.numberAscending:
        items.sort(
            (a, b) => ((a.item.nr ?? 0) * 10 - (b.item.nr ?? 0) * 10).toInt());
        break;
      case SubareaSorting.numberDescending:
        items.sort(
            (a, b) => ((b.item.nr ?? 0) * 10 - (a.item.nr ?? 0) * 10).toInt());
        break;
    }

    // split normal and pinned items
    final pinnedAreas = _extractPinnedItems(items);
    items = pinnedAreas + items;
    return items;
  }

  List<SubareaBloc> _extractPinnedItems(List<SubareaBloc> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedSubareas.contains(item.item.id))
        .map((item) => item.copyWith(item: item.item.copyWith(isPinned: true)))
        .toList();

    // remove from original list
    items.removeWhere((item) =>
        jsonPersistence.persistence.pinnedSubareas.contains(item.item.id));

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
