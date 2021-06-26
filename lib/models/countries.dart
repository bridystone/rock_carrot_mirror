import 'dart:async';
import 'package:rock_carrot/models/baseitems.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_countries.dart';

class Country extends Baseitem {
  // fields from the database
  String _land;
  // ignore: unused_field
  String _iso3166;
  // ignore: unused_field
  String _kfz;

  /// Default Constructor
  Country(
    this._land,
    this._iso3166,
    this._kfz,
    int childCountInt,
  ) : super(childCountInt: childCountInt);

  // Standard Value
  @override
  String get name {
    return _land;
  }

  /// create new countryelement from sqlResult
  factory Country.fromSql(Map<String, Object?> sqlResult) {
    return Country(
      sqlResult.values.elementAt(0).toString(), //land
      sqlResult.values.elementAt(1).toString(), //ISO3166
      sqlResult.values.elementAt(2).toString(), //KFZ
      int.parse(sqlResult.values.elementAt(3).toString()), //childCount
    );
  }
}

class Countries {
  /// get Items from database and transform them into a list of items
  Future<List<Country>> getCountries() {
    final sqlResults = SqlHandler().queryCountries();
    return sqlResults.then(
      (sqlResultsFinal) => sqlResultsFinal
          .map(
            (sqlRow) => Country.fromSql(sqlRow),
          )
          .toList(),
    );
  }
}
