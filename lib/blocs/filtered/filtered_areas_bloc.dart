import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';

class FilteredAreasBloc extends FilteredBaseBloc {
  FilteredAreasBloc(AreasBloc areasBloc) : super(areasBloc) {
    // initial Sorting
    add(FilteredBaseEventSortingUpdated(BaseSorting.nameAscending));
  }

  @override
  List<Area> getFilterAndSortTodos(
    String filter,
    dynamic sorting,
  ) {
    var items = baseBloc.items as List<Area>;

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
    return items;
  }
}
