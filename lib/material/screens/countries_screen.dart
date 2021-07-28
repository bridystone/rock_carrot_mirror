import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/countries_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_countries_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/blocs/filtered_base/filtered_base_bloc.dart';
import 'package:rock_carrot/material/rock_carrot_app_bar.dart';
import 'package:rock_carrot/material/lists/countries_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

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
        headline: AppLocalizations.of(context).homeCountries,
        initialFilterValue: filteredCountriesBloc.currentFilter,
        onFilterChanged: (filterText) => filteredCountriesBloc
            .add(FilteredBaseEventFilterUpdated(filterText)),
        selectedValue: filteredCountriesBloc.currentSorting,
        onSortingChanged: (selectedSorting) => filteredCountriesBloc.add(
          FilteredBaseEventSortingUpdated(selectedSorting),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async =>
            BlocProvider.of<CountriesBloc>(context).add(BaseEventUpdateData()),
        child: BlocBuilder<CountriesBloc, BaseState>(builder: (context, state) {
          if (state is BaseStateInProgress) {
            return CircularProgressIndicator();
          }
          if (state is BaseStateDataReceived) {
            return BlocBuilder<FilteredCountriesBloc, FilteredBaseState>(
              builder: (context, state) {
                if (state is FilteredBaseStateReadyForUI) {
                  return CountriesListView(
                    countries: state.filteredItems as List<Country>,
                    scrollController: scrollController,
                  );
                }
                return Text('');
              },
            );
          }
          return Text('');
          // TODO: other stated
        }),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
