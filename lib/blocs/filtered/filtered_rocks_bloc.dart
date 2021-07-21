import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';

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
  List<Rock> getFilterAndSortTodos(
    String filter,
    dynamic sorting,
  ) {
    var items = baseBloc.items as List<Rock>;

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
    return items;
  }

  @override
  dynamic get currentSorting => (state is FilteredBaseStateReadyForUI)
      ? (state as FilteredBaseStateReadyForUI).activeSorting
      : RockSorting.numberAscending;
}
