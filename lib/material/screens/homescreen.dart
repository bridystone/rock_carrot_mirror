import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/blocs/update_state_bloc/update_state_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/material/widgets/areas_list.dart';
import 'package:rock_carrot/material/widgets/countries_list.dart';
import 'package:rock_carrot/material/widgets/rocks_list.dart';
import 'package:rock_carrot/material/widgets/routes_list.dart';
import 'package:rock_carrot/material/widgets/subareas_list.dart';

// TODO: is something like this useful?!
enum HomeScreenTabs { country, area, subarea, rock, route }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              countries: () => BlocProvider.of<UpdateStateBloc>(context)
                  .add(UpdateStateEvent.updateCountries()),
              areas: (country) => null,
              subareas: (_) => null,
              rocks: (_) => null,
              routes: (_) => null,
            );
          }, child: BlocBuilder<ViewBloc, ViewState>(
            builder: (context, state) {
              return state.when(
                countries: () => BlocBuilder<CountriesBloc, CountriesState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    countriesReceived: (countries) =>
                        CountriesListView(countries: countries),
                    failure: () => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                  ),
                ),
                areas: (country) => BlocBuilder<AreasBloc, AreasState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    areasReceived: (country, areas) =>
                        AreasListView(areas: areas),
                    failure: () => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                  ),
                ),
                subareas: (area) => BlocBuilder<SubareasBloc, SubareasState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    subareasReceived: (area, subareas) =>
                        SubareasListView(subareas: subareas),
                    failure: () => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                  ),
                ),
                rocks: (subarea) => BlocBuilder<RocksBloc, RocksState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    rocksReceived: (subarea, rocks) =>
                        RocksListView(rocks: rocks),
                    failure: () => Text('Snackbar'),
                    initial: () => Text('should not happen: $state'),
                  ),
                ),
                routes: (rock) => BlocBuilder<RoutesBloc, RoutesState>(
                  builder: (context, state) => state.when(
                    inProgress: () => CircularProgressIndicator(),
                    routesReceived: (rock, routes) =>
                        RoutesListView(routes: routes),
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
