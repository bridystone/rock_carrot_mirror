import 'package:flutter/material.dart';
import 'package:yacguide_flutter/Baseitems/Areas.dart';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/Countries.dart';
import 'package:yacguide_flutter/Baseitems/Gipfels.dart';
import 'package:yacguide_flutter/Baseitems/Subareas.dart';
import 'package:yacguide_flutter/Material/AreasMaterial.dart';
import 'package:yacguide_flutter/Material/SubareasMaterial.dart';
import 'package:yacguide_flutter/Material/CountriesMaterial.dart';
import 'package:yacguide_flutter/Material/GipfelsMaterial.dart';
import 'package:yacguide_flutter/Material/WegeMaterial.dart';

class YacGuideFlutterMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create Material
    return MaterialApp(
      title: 'YacGuideFlutter',
      home: CountryMaterial(BaseItem(-1, 'Countries', -1)),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            final base = settings.arguments as BaseItem;
            return MaterialPageRoute<CountryMaterial>(
                builder: (context) => CountryMaterial(base));
          case '/Country':
            final country = settings.arguments as Country;
            return MaterialPageRoute<AreasMaterial>(
                builder: (context) => AreasMaterial(country));
          case '/Area':
            final area = settings.arguments as Area;
            return MaterialPageRoute<SubAreasMaterial>(
                builder: (context) => SubAreasMaterial(area));
          case '/Subarea':
            final subarea = settings.arguments as Subarea;
            return MaterialPageRoute<GipfelsMaterial>(
                builder: (context) => GipfelsMaterial(subarea));
          case '/Gipfel':
            final gipfel = settings.arguments as Gipfel;
            return MaterialPageRoute<WegeMaterial>(
                builder: (context) => WegeMaterial(gipfel));
          default:
        }
      },
    );
  }
}
