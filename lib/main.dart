import 'dart:io' show Platform;
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart'; // for runApp
import 'package:flutter/foundation.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_areas_bloc.dart';
import 'package:rock_carrot/blocs/countries_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_countries_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_rocks_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/filtered/filtered_routes_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/simple_bloc_observer.dart';
import 'package:rock_carrot/blocs/filtered/filtered_subareas_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';

import 'package:rock_carrot/rock_carrot_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  if (kDebugMode) {
    Bloc.observer = SimpleBlocObserver();
  }

  try {
    // Platform is not working on Web
    if ((Platform.isAndroid) || (Platform.isIOS)) {
      runApp(MultiBlocProvider(
        providers: [
          BlocProvider<CountriesBloc>(
            create: (context) => CountriesBloc(),
          ),
          BlocProvider<AreasBloc>(
            create: (context) => AreasBloc(),
          ),
          BlocProvider<SubareasBloc>(
            create: (context) => SubareasBloc(),
          ),
          BlocProvider<RocksBloc>(
            create: (context) => RocksBloc(),
          ),
          BlocProvider<RoutesBloc>(
            create: (context) => RoutesBloc(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FilteredCountriesBloc(
                BlocProvider.of<CountriesBloc>(context),
              ),
              child: Container(),
            ),
            BlocProvider(
              create: (context) => FilteredAreasBloc(
                BlocProvider.of<AreasBloc>(context),
              ),
              child: Container(),
            ),
            BlocProvider(
              create: (context) => FilteredSubareasBloc(
                BlocProvider.of<SubareasBloc>(context),
              ),
              child: Container(),
            ),
            BlocProvider(
              create: (context) => FilteredRocksBloc(
                BlocProvider.of<RocksBloc>(context),
              ),
              child: Container(),
            ),
            BlocProvider(
              create: (context) => FilteredRoutesBloc(
                BlocProvider.of<RoutesBloc>(context),
              ),
              child: Container(),
            ),
          ],
          child: RockCarrotApp(),
        ),
      ));
      return;
    }
  } catch (e) {
    throw Exception(e);
  }
  print('not a supported platform');
}
