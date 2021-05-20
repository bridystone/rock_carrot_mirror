import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';
import 'package:yacguide_flutter/Database/sqlCountries.dart';

/// the basic country item -> direct relation to land in database
class Country extends BaseItem {
  // fields from the database
  String land;
  String iso3166;
  String kfz;

  /// super = Parent = Baseitem (id, name, childCount) => UI=> "name (count)"
  Country(this.land, this.iso3166, this.kfz, int childCount)
      : super(0, land, childCount);

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

class Countries extends BaseItems {
  Countries(BaseItem parent) : super(parent);

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.queryCountries();
  }

  @override
  FutureOr<int> deleteItems() {
    return sqlHelper.deleteCountries();
  }
}
