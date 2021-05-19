import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/BaseItems.dart';
import 'package:yacguide_flutter/Baseitems/Rocks.dart';
import 'package:yacguide_flutter/Database/sqlRoutes.dart';

class Route extends BaseItem {
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
  int routeCount;
  Route(
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
    this.routeCount,
  ) : super(id, wegname, routeCount);

  factory Route.fromSql(Map<String, Object?> sqlResult) {
    return Route(
      0, //sektor id
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

class Routes extends BaseItems {
  Routes(Rock parent) : super(parent);

  @override
  Future<List<Map<String, Object?>>> getItems({
    String queryItemString = '',
    int queryItemInt = 0,
  }) {
    return sqlHelper.queryRoutes(queryItemInt);
  }

  @override
  FutureOr<int> deleteItems() {
    if (parent.name == BaseItems.dummyName) {
      return sqlHelper.deleteRoutes(parent.id); // should be sektor_id
    }
    throw Exception('not to be called - should be deleted from rocks');
  }

  /// ensure that this is only called from Rocks and not directly
  @override
  FutureOr<void> fetchFromWeb() async {
    if (parent.name == BaseItems.dummyName) {
      return super.fetchFromWeb(); // should be sektor_id
    }
    throw Exception('not to be called - should be deleted from rocks');
  }
}
