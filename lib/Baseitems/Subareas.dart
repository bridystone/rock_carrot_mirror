import 'dart:async';
import 'package:yacguide_flutter/Baseitems/Areas.dart';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';

class Subarea extends BaseItem {
  @override
  int id;
  int nr;
  @override
  String name;
  int gipfelCount;
  Subarea(this.id, this.nr, this.name, this.gipfelCount)
      : super(id, name, gipfelCount);

  factory Subarea.fromSql(Map<String, Object?> sqlResult) {
    return Subarea(
      int.parse(sqlResult['sektor_ID'].toString()),
      int.parse(sqlResult['sektornr'].toString()),
      sqlResult['sektorname_d'].toString(),
      int.parse(sqlResult['count'].toString()), // should be Subareacount
    );
  }
}

class Subareas extends BaseItems {
  Subareas(Area parent) : super(parent);

  @override
  FutureOr<void> fetchFromWeb(
    String queryValue, [
    String queryKey = 'gebietid',
    String target = 'teilgebiet',
  ]) async {
    await super.fetchFromWeb(target, queryKey, queryValue);
  }

  @override
  FutureOr<int> sqlFromJson(Map<String, dynamic> json) {
    return sqlHelper.insertSubareas(
      int.parse(json['sektor_ID']),
      int.parse(json['gebietid']),
      int.parse(json['sektornr']),
      json['sektorname_d'],
      json['sektorname_cz'],
    );
  }

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.querySubareas(queryItemInt);
  }

  @override
  FutureOr<int> deleteItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.deleteSubareas(queryItemInt);
  }
}
