import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';
import 'package:yacguide_flutter/Baseitems/Subareas.dart';

class Gipfel extends BaseItem {
  @override
  int id; /*sektorid!!*/
  int gipfelId;
  String gipfelNr;
  String gipfelName;
  String gipfelNameCZ;
  String gipfelStatus;
  String gipfelTyp;
  String schartenhoehe;
  String talhoehe;
  int wegeCount;
  Gipfel(
    this.id,
    this.gipfelId,
    this.gipfelNr,
    this.gipfelName,
    this.gipfelNameCZ,
    this.gipfelStatus,
    this.gipfelTyp,
    this.schartenhoehe,
    this.talhoehe,
    this.wegeCount,
  ) : super(id, gipfelName, wegeCount);

  factory Gipfel.fromSql(Map<String, Object?> sqlResult) {
    return Gipfel(
      int.parse(sqlResult['sektorid'].toString()),
      int.parse(sqlResult['gipfel_ID'].toString()),
      sqlResult['gipfelnr'].toString(),
      sqlResult['gipfelname_d'].toString(),
      sqlResult['gipfelname_cz'].toString(),
      sqlResult['status'].toString(),
      sqlResult['typ'].toString(),
      sqlResult['schartenhoehe'].toString(),
      sqlResult['talhoehe'].toString(),
      int.parse(sqlResult['count'].toString()), // should be Subareacount
    );
  }
}

class Gipfels extends BaseItems {
  Gipfels(Subarea parent) : super(parent);

  @override
  FutureOr<void> fetchFromWeb(
    String queryValue, [
    String queryKey = 'sektorid',
    String target = 'gipfel',
  ]) async {
    await super.fetchFromWeb(target, queryKey, queryValue);
  }

  @override
  FutureOr<int> sqlFromJson(Map<String, dynamic> json) {
    return sqlHelper.insertGipfels(
      int.parse(json['gipfel_ID']),
      json['gipfelnr'],
      json['gipfelname_d'],
      json['gipfelname_cz'],
      json['status'],
      json['typ'],
      json['vgrd'],
      json['ngrd'],
      json['posfehler'],
      json['schartenhoehe'],
      json['talhoehe'],
      int.parse(json['sektorid']),
    );
  }

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.queryGipfels(queryItemInt);
  }

  @override
  FutureOr<int> deleteItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.deleteGipfels(queryItemInt);
  }
}
