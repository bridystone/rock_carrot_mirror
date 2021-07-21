import 'package:rock_carrot/blocs/countries_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

class FilteredCountriesBloc extends FilteredBaseBloc {
  FilteredCountriesBloc(CountriesBloc countriesBloc) : super(countriesBloc) {
    // initial Sorting
    add(FilteredBaseEventSortingUpdated(BaseSorting.nameAscending));
  }

  @override
  List<Country> getFilterAndSortTodos(
    String filter,
    dynamic sorting,
  ) {
    var items = baseBloc.items as List<Country>;

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
