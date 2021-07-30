import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/material/screens/homescreen.dart';
import 'package:rock_carrot/rock_carrot_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RockCarrotApp extends StatelessWidget {
  const RockCarrotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      theme: RockCarrotTheme.theme,
      initialRoute: 'home',
      routes: {
        'home': (context) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) =>
                      CountriesBloc()..add(BaseEventRequestData()),
                ),
                BlocProvider(
                  create: (context) => ViewBloc(
                      /*
                    countriesBloc: BlocProvider.of<CountriesBloc>(context),
                    areasBloc: BlocProvider.of<AreasBloc>(context),
                    subareasBloc: BlocProvider.of<SubareasBloc>(context),
                    rocksBloc: BlocProvider.of<RocksBloc>(context),
                    routesBloc: BlocProvider.of<RoutesBloc>(context),*/
                      )
                    ..add(ViewEvent.toCountries()),
                ),
              ],
              child: HomeScreen(),
            ),
      },
      localizationsDelegates: [
        // default localizations i.e. for date picker - provided by Flutter
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // Application Localization
        AppLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('de'),
      ],
    );
  }
}
