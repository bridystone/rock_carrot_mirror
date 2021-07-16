import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/material/screens/areas_screen.dart';
import 'package:rock_carrot/material/screens/countries_screen.dart';
import 'package:rock_carrot/material/homescreen_bottom_navigation_bar.dart';
import 'package:rock_carrot/material/screens/rocks_screen.dart';
import 'package:rock_carrot/material/screens/routes_screen.dart';
import 'package:rock_carrot/material/screens/subareas_screen.dart';

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
      builder: (context, state) => state.when(
        countries: () => CountriesScreen(
          bottomNavigationBar:
              HomeScreenBottomNavigationBar(currentNavigationState: 0),
          scrollController: controllerCountries,
        ),
        areas: (country) => AreasScreen(
          country: country,
          bottomNavigationBar: HomeScreenBottomNavigationBar(
            currentNavigationState: 1,
          ),
          scrollController: controllerAreas,
        ),
        subareas: (area) => SubareasScreen(
            area: area,
            bottomNavigationBar: HomeScreenBottomNavigationBar(
              currentNavigationState: 2,
            ),
            scrollController: controllerSubareas),
        rocks: (subarea) => RocksScreen(
          subarea: subarea,
          bottomNavigationBar: HomeScreenBottomNavigationBar(
            currentNavigationState: 3,
          ),
          scrollController: controllerRocks,
        ),
        routes: (rock) => RoutesScreen(
          rock: rock,
          bottomNavigationBar: HomeScreenBottomNavigationBar(
            currentNavigationState: 4,
          ),
          scrollController: controllerRoutes,
        ),
      ),
    );
  }
}
