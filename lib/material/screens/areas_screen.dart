import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/areas/filtered_areas/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/filtered_countries_bloc.dart';
import 'package:rock_carrot/material/lists/areas_list.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

class AreasScreen extends StatelessWidget {
  final ScrollController scrollController;
  final HomeScreenBottomNavigationBar bottomNavigationBar;
  final Country country;

  const AreasScreen({
    Key? key,
    required this.scrollController,
    required this.bottomNavigationBar,
    required this.country,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final filteredAreasBloc = BlocProvider.of<FilteredAreasBloc>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(country.name),
              SizedBox(
                width: 100,
                height: 10,
                child: TextFormField(
                  maxLines: 1,
                  initialValue: filteredAreasBloc.currentFilter,
                  onChanged: (filterText) => filteredAreasBloc
                      .add(FilteredAreasEvent.filterUpdated(filterText)),
                ),
              ),
              IconButton(
                  onPressed: () => filteredAreasBloc.add(
                        FilteredAreasEvent.sortingUpdated(
                          filteredAreasBloc.currentSorting ==
                                  AreasSorting.ascending
                              ? AreasSorting.descending
                              : AreasSorting.ascending,
                        ),
                      ),
                  icon: Icon(Icons.sort)),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: RefreshIndicator(
          onRefresh: () async => BlocProvider.of<AreasBloc>(context)
              .add(AreasEvent.updateAreas(country)),
          child: BlocBuilder<AreasBloc, AreasState>(
            builder: (context, state) => state.when(
              inProgress: () => CircularProgressIndicator(),
              areasReceived: (country, areas) =>
                  BlocBuilder<FilteredAreasBloc, FilteredAreasState>(
                builder: (context, state) {
                  return state.when(
                      initial: () => Text(''),
                      readyForUI: (areas, filter, sorting) => AreasListView(
                          areas: areas,
                          scrollController: scrollController,
                          // use key to ensure that scroll position is stored per country
                          key: Key('ListviewArea' + country.name)));
                },
              ),
              failure: (dynamic e) => Text('Snackbar'),
              initial: () => Text('should not happen: $state'),
              updateInProgress: (step, percentage) =>
                  Text('$step: $percentage'),
              updateFinished: (result) => Text('Finished: $result'),
            ),
          ),
        ));
  }
}
