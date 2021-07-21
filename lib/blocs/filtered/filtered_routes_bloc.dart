import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

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
  List<Route> getFilterAndSortTodos(
    String filter,
    dynamic sorting,
  ) {
    var items = baseBloc.items as List<Route>;

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
    return items;
  }

  @override
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : RouteSorting.numberAscending;
}
