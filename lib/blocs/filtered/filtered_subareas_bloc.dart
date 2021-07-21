import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

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
  List<Subarea> getFilterAndSortTodos(
    String filter,
    dynamic sorting,
  ) {
    var items = baseBloc.items as List<Subarea>;

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
    return items;
  }

  @override
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : SubareaSorting.numberAscending;
}
