import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';
import 'package:yacguide_flutter/Baseitems/Countries.dart';

class Area extends BaseItem {
  @override
  int id;
  @override
  String name;
  int subareaCount;
  Area(this.id, this.name, this.subareaCount) : super(id, name, subareaCount);

  factory Area.fromSql(Map<String, Object?> sqlResult) {
    return Area(
      int.parse(sqlResult['gebiet_ID'].toString()),
      sqlResult['gebiet'].toString(),
      int.parse(sqlResult['count'].toString()), // should be subareacount
    );
  }
}

class Areas extends BaseItems {
  Areas(Country parent) : super(parent);

  @override
  FutureOr<int> sqlFromJson(Map<String, dynamic> json) {
    return sqlHelper.insertAreas(
      int.parse(json['gebiet_ID']),
      json['gebiet'],
      json['land'],
      json['sprache2'],
      json['gdefaultanzeige'],
      json['schwskala'],
    );
  }

  @override
  FutureOr<void> fetchFromWeb(
    String queryValue, [
    String queryKey = 'land',
    String target = 'gebiet',
  ]) async {
    await super.fetchFromWeb(target, queryKey, queryValue);
  }

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) async {
    return await sqlHelper.queryAreas(queryItemString);
  }

  @override
  FutureOr<int> deleteItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.deleteAreas(queryItemString);
  }
}
