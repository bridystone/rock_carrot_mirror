import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';

class Country extends BaseItem {
  @override
  String name;
  int areaCount;
  Country(this.name, this.areaCount) : super(0, name, areaCount);

  factory Country.fromSql(Map<String, Object?> sqlResult) {
    return Country(
      sqlResult['land'].toString(),
      int.parse(sqlResult['count'].toString()),
    );
  }
}

class Countries extends BaseItems {
  Countries(BaseItem parent) : super(parent);

  @override
  FutureOr<int> sqlFromJson(Map<String, dynamic> json) {
    return sqlHelper.insertCountry(
      json['land'],
      json['ISO3166'],
      json['KFZ'],
    );
  }

  @override
  FutureOr<void> fetchFromWeb([
    String queryValue = '',
    String queryKey = '',
    String target = 'land',
  ]) async {
    await super.fetchFromWeb(target, queryKey, queryValue);
  }

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.queryCountries();
  }

  @override
  FutureOr<int> deleteItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.deleteCountries();
  }
}
