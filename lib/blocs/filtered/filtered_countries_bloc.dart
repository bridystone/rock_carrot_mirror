import 'package:rock_carrot/blocs/countries_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/persistence/json_persistence.dart';

class FilteredCountriesBloc extends FilteredBaseBloc {
  FilteredCountriesBloc(CountriesBloc countriesBloc) : super(countriesBloc) {
    // initial Sorting
    add(FilteredBaseEventSortingUpdated(BaseSorting.nameAscending));
  }

  @override
  List<Country> getFilterAndSortItems(
    String filter,
    dynamic sorting,
  ) {
    var items = List<Country>.from(baseBloc.items);

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

    // split normal and pinned items
    final pinnedCountries = _extractPinnedItems(items);
    items = pinnedCountries + items;

    return items;
  }

  List<Country> _extractPinnedItems(List<Country> items) {
    final jsonPersistence = JsonPersistence();

    // gather pinned and copy with "isPinned"
    final pinned = items
        .where((item) =>
            jsonPersistence.persistence.pinnedCountries.contains(item.name))
        .map((item) => item.copyWith(isPinned: true))
        .toList();

    // remove from original list
    items.removeWhere((item) =>
        jsonPersistence.persistence.pinnedCountries.contains(item.name));

    return pinned;
  }

  /// store pin status in JsonPersistence
  @override
  void pinItem(Baseitem baseitem) {
    final jsonPersistence = JsonPersistence();
    if (baseitem is Country) {
      if (!jsonPersistence.persistence.pinnedCountries.remove(baseitem.name)) {
        jsonPersistence.persistence.pinnedCountries.add(baseitem.name);
      }
      jsonPersistence.storePersistence();
    } else {
      throw UnsupportedError('not a $runtimeType: $baseitem');
    }
  }
}
