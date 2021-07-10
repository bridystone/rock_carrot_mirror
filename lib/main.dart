import 'dart:io' show Platform;
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart'; // for runApp
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/blocs/simple_bloc_observer.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';

// ignore: unused_import
import 'package:rock_carrot/main_material.dart';
import 'package:rock_carrot/rock_carrot_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  try {
    // Platform is not working on Web
    if ((Platform.isAndroid) || (Platform.isIOS)) {
      runApp(MultiBlocProvider(
        providers: [
          BlocProvider<CountriesBloc>(
            // initially request countries (add Event)
            create: (context) =>
                CountriesBloc()..add(CountriesEvent.requestCountries()),
          ),
          BlocProvider<AreasBloc>(
            // initially request countries (add Event)
            create: (context) => AreasBloc(),
          ),
          BlocProvider<SubareasBloc>(
            // initially request countries (add Event)
            create: (context) => SubareasBloc(),
          ),
          BlocProvider<RocksBloc>(
            // initially request countries (add Event)
            create: (context) => RocksBloc(),
          ),
          BlocProvider<RoutesBloc>(
            // initially request countries (add Event)
            create: (context) => RoutesBloc(),
          ),
        ],
        child: RockCarrotApp(),
      ));
      return;
    }
  } catch (e) {
    throw Exception(e);
  }
  print('not a supported platform');
}
