import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/blocs/countries/filtered_countries/filtered_countries_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/material/lists/countries_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';

class CountriesScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;

  const CountriesScreen({
    required this.bottomNavigationBar,
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredCountriesBloc =
        BlocProvider.of<FilteredCountriesBloc>(context);
    return Scaffold(
      appBar: RockCarrotAppBar(
        headline: 'Countries',
        initialFilterValue: filteredCountriesBloc.currentFilter,
        onFilterChanged: (filterText) => filteredCountriesBloc
            .add(FilteredCountriesEvent.filterUpdated(filterText)),
        selectedValue: filteredCountriesBloc.currentSorting,
        onSortingChanged: (selectedSorting) => filteredCountriesBloc.add(
          FilteredCountriesEvent.sortingUpdated(selectedSorting),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async => BlocProvider.of<CountriesBloc>(context)
            .add(CountriesEvent.updateCountries()),
        child: BlocBuilder<CountriesBloc, CountriesState>(
          builder: (context, state) => state.when(
            inProgress: () => CircularProgressIndicator(),
            updateInProgress: (step, percentage) => Text('$step: $percentage'),
            updateFinished: (result) => Text('Finished: $result'),
            countriesReceived: (countries) =>
                BlocBuilder<FilteredCountriesBloc, FilteredCountriesState>(
              builder: (context, state) {
                return state.when(
                    initial: () => Text(''),
                    readyForUI: (countries, filter, sorting) =>
                        CountriesListView(
                          countries: countries,
                          scrollController: scrollController,
                        ));
              },
            ),
            failure: (dynamic e) => Text('Snackbar'),
            initial: () => Text('should not happen: $state'),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
