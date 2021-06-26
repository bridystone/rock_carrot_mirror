import 'package:flutter/material.dart';
import 'package:rock_carrot/models/areas.dart';
import 'package:rock_carrot/models/countries.dart';
import 'package:rock_carrot/models/rocks.dart';
import 'package:rock_carrot/models/subareas.dart';
import 'package:rock_carrot/models/cubit/update_cubit.dart';
import 'package:rock_carrot/material/screens/areas_material.dart';
import 'package:rock_carrot/material/progress_notifier.dart';
import 'package:rock_carrot/material/screens/subareas_material.dart';
import 'package:rock_carrot/material/screens/countries_material.dart';
import 'package:rock_carrot/material/screens/rocks_material.dart';
import 'package:rock_carrot/material/screens/routes_material.dart';

class RockCarrotMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create Material
    return MaterialApp(
      title: 'Rock Carrot',
      home: CountryMaterial(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute<CountryMaterial>(
                builder: (context) => CountryMaterial());
          case '/Country':
            final country = (settings.arguments as List)[0] as Country;
            final progressNotifier =
                (settings.arguments as List)[1] as ProgressNotifier;
            final updateCubit = (settings.arguments as List)[2] as UpdateCubit;
            return MaterialPageRoute<AreasMaterial>(
                builder: (context) => AreasMaterial(
                      country,
                      progressNotifier,
                      updateCubit,
                    ));
          case '/Area':
            final area = (settings.arguments as List)[0] as Area;
            final progressNotifier =
                (settings.arguments as List)[1] as ProgressNotifier;
            final updateCubit = (settings.arguments as List)[2] as UpdateCubit;

            return MaterialPageRoute<SubAreasMaterial>(
                builder: (context) => SubAreasMaterial(
                      area,
                      progressNotifier,
                      updateCubit,
                    ));
          case '/Subarea':
            final subarea = (settings.arguments as List)[0] as Subarea;
            final progressNotifier =
                (settings.arguments as List)[1] as ProgressNotifier;
            final updateCubit = (settings.arguments as List)[2] as UpdateCubit;

            return MaterialPageRoute<RocksMaterial>(
                builder: (context) => RocksMaterial(
                      subarea,
                      progressNotifier,
                      updateCubit,
                    ));
          case '/Rock':
            final rock = settings.arguments as Rock;
            return MaterialPageRoute<RoutesMaterial>(
                builder: (context) => RoutesMaterial(rock));
          default:
        }
      },
    );
  }
}
