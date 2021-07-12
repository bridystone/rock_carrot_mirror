import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/material/listviews/areas_list.dart';
import 'package:rock_carrot/material/listviews/countries_list.dart';
import 'package:rock_carrot/material/listviews/rocks_list.dart';
import 'package:rock_carrot/material/listviews/routes_list.dart';
import 'package:rock_carrot/material/listviews/subareas_list.dart';

// TODO: is something like this useful?!
enum HomeScreenTabs { country, area, subarea, rock, route }

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // Store Scrolling Position
  // https://stackoverflow.com/questions/60292911/how-to-get-flutter-scrollcontroller-to-save-position-of-listview-builder-when
  final ScrollController controllerCountries =
      ScrollController(keepScrollOffset: true);
  final ScrollController controllerAreas =
      ScrollController(keepScrollOffset: true);
  final ScrollController controllerSubareas =
      ScrollController(keepScrollOffset: true);
  final ScrollController controllerRocks =
      ScrollController(keepScrollOffset: true);
  final ScrollController controllerRoutes =
      ScrollController(keepScrollOffset: true);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewBloc, ViewState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.runtimeType.toString()),
          ),
          body: RefreshIndicator(onRefresh: () async {
            state.when(
              countries: () => BlocProvider.of<CountriesBloc>(context)
                  .add(CountriesEvent.updateCountries()),
              areas: (country) => country != null
                  ? BlocProvider.of<AreasBloc>(context)
                      .add(AreasEvent.updateAreas(country))
                  : null,
              subareas: (area) => area != null
                  ? BlocProvider.of<SubareasBloc>(context)
                      .add(SubareasEvent.updateSubareas(area))
                  : null,
              rocks: (subarea) => subarea != null
                  ? BlocProvider.of<RocksBloc>(context)
                      .add(RocksEvent.updateRocks(subarea))
                  : null,
              routes: (_) => null,
            );
          }, child: BlocBuilder<ViewBloc, ViewState>(
            builder: (context, state) {
              return state.when(
                countries: () => BlocBuilder<CountriesBloc, CountriesState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    updateInProgress: (step, percentage) =>
                        Text('$step: $percentage'),
                    updateFinished: (result) => Text('Finished: $result'),
                    countriesReceived: (countries) => CountriesListView(
                      countries: countries,
                      scrollController: controllerCountries,
                    ),
                    failure: (dynamic e) => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                  ),
                ),
                areas: (country) => BlocBuilder<AreasBloc, AreasState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    areasReceived: (country, areas) => AreasListView(
                      areas: areas,
                      scrollController: controllerAreas,
                      // use key to ensure that scroll position is stored per country
                      key: Key('ListviewArea' + country.land),
                    ),
                    failure: (dynamic e) => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                    updateInProgress: (step, percentage) =>
                        Text('$step: $percentage'),
                    updateFinished: (result) => Text('Finished: $result'),
                  ),
                ),
                subareas: (area) => BlocBuilder<SubareasBloc, SubareasState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    subareasReceived: (area, subareas) => SubareasListView(
                      subareas: subareas,
                      scrollController: controllerSubareas,
                      // use key to ensure that scroll position is stored per area
                      key: Key('ListviewSubarea' + area.gebiet),
                    ),
                    failure: (dynamic e) => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                    updateInProgress: (step, percentage) =>
                        Text('$step: $percentage'),
                    updateFinished: (result) => Text('Finished: $result'),
                  ),
                ),
                rocks: (subarea) => BlocBuilder<RocksBloc, RocksState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    rocksReceived: (subarea, rocks) => RocksListView(
                      rocks: rocks,
                      scrollController: controllerRocks,
                      // use key to ensure that scroll position is stored per subarea
                      key: Key('ListviewRocks' + subarea.sektornameD),
                    ),
                    failure: (dynamic e) => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                    updateInProgress: (step, percentage) =>
                        Text('$step: $percentage'),
                    updateFinished: (result) => Text('Finished: $result'),
                  ),
                ),
                routes: (rock) => BlocBuilder<RoutesBloc, RoutesState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    routesReceived: (rock, routes) => RoutesListView(
                        routes: routes,
                        scrollController: controllerRoutes,
                        // use key to ensure that scroll position is stored per subarea
                        key: Key('ListviewRoutes' +
                            rock.gipfelName +
                            rock.sektorid.toString())),
                    failure: () => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                  ),
                ),
              );
            },
          )),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.when(
              countries: () => 0,
              areas: (_) => 1,
              subareas: (_) => 2,
              rocks: (_) => 3,
              routes: (_) => 4,
            ),
            onTap: (index) {
              switch (index) {
                case 0:
                  return BlocProvider.of<ViewBloc>(context)
                      .add(ViewEvent.toCountries());
                case 1:
                  return BlocProvider.of<ViewBloc>(context)
                      .add(ViewEvent.toAreas(null));
                case 2:
                  return BlocProvider.of<ViewBloc>(context)
                      .add(ViewEvent.toSubareas(null));
                case 3:
                  return BlocProvider.of<ViewBloc>(context)
                      .add(ViewEvent.toRocks(null));
                case 4:
                  return BlocProvider.of<ViewBloc>(context)
                      .add(ViewEvent.toRoutes(null));
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Country',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Area',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Subarea',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Rocks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Routes',
              ),
            ],
          ),
        );
      },
    );
  }
}
