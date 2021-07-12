import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/material/screens/homescreen.dart';
import 'package:rock_carrot/rock_carrot_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RockCarrotApp extends StatelessWidget {
  const RockCarrotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RockCarrot',
      theme: RockCarrotTheme.theme,
      initialRoute: 'home',
      routes: {
        'home': (context) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => ViewBloc(
                    countriesBloc: BlocProvider.of<CountriesBloc>(context),
                    areasBloc: BlocProvider.of<AreasBloc>(context),
                    subareasBloc: BlocProvider.of<SubareasBloc>(context),
                    rocksBloc: BlocProvider.of<RocksBloc>(context),
                    routesBloc: BlocProvider.of<RoutesBloc>(context),
                  )..add(ViewEvent.toCountries()),
                ),
              ],
              child: HomeScreen(),
            ),
      },
    );
  }
}
