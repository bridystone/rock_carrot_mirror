import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';
import 'package:yacguide_flutter/Baseitems/Gipfels.dart';

class Weg extends BaseItem {
  @override
  int id; /*sektorid!!*/
  int wegId;
  int gipfelId;
  String schwierigkeit;
  String ringzahl;
  String wegbeschr;
  String wegbeschrCZ;
  String kletterei;
  String wegname;
  String wegnameCZ;
  String wegstatus;
  String wegnr;
  int wegeCount;
  Weg(
    this.id,
    this.wegId,
    this.gipfelId,
    this.schwierigkeit,
    this.ringzahl,
    this.wegbeschr,
    this.wegbeschrCZ,
    this.kletterei,
    this.wegname,
    this.wegnameCZ,
    this.wegstatus,
    this.wegnr,
    this.wegeCount,
  ) : super(id, wegname, wegeCount);

  factory Weg.fromSql(Map<String, Object?> sqlResult) {
    return Weg(
      int.parse(sqlResult['sektorid'].toString()),
      int.parse(sqlResult['weg_ID'].toString()),
      int.parse(sqlResult['gipfelid'].toString()),
      sqlResult['schwierigkeit'].toString(),
      sqlResult['ringzahl'].toString(),
      sqlResult['wegbeschr_d'].toString(),
      sqlResult['wegbeschr_cz'].toString(),
      sqlResult['kletterei'].toString(),
      sqlResult['wegname_d'].toString(),
      sqlResult['wegname_cz'].toString(),
      sqlResult['wegstatus'].toString(),
      sqlResult['wegnr'].toString(),
      sqlResult['wegname_d'].toString().length, // should be Subareacount
    );
  }
}

class Wege extends BaseItems {
  Wege(Gipfel parent) : super(parent);

  @override
  FutureOr<void> fetchFromWeb(
    String queryValue, [
    String queryKey = 'sektorid',
    String target = 'wege',
  ]) async {
    await super.fetchFromWeb(target, queryKey, queryValue);
  }

  @override
  FutureOr<int> sqlFromJson(Map<String, dynamic> json) {
    return sqlHelper.insertWege(
      int.parse(json['weg_ID']),
      int.parse(json['gipfelid']),
      json['schwierigkeit'],
      json['erstbegvorstieg'],
      json['erstbegnachstieg'],
      json['erstbegdatum'],
      json['ringzahl'],
      json['wegbeschr_d'],
      json['wegbeschr_cz'],
      json['kletterei'],
      json['wegname_d'],
      json['wegname_cz'],
      json['wegstatus'],
      json['wegnr'],
      parent.id, // = sektorid
      //int.parse(json['sektorid']),
    );
  }

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.queryWege(queryItemInt);
  }

  @override
  FutureOr<int> deleteItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.deleteWege(queryItemInt);
  }
}
