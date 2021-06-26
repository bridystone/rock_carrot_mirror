import 'dart:async';
import 'package:intl/intl.dart';
import 'package:rock_carrot/models/baseitems.dart';
import 'package:rock_carrot/models/rocks.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_routes.dart';

class Route extends Baseitem {
  int _wegId;
  // ignore: unused_field
  int _gipfelId;
  String _schwierigkeit;
  String _erstbegvorstieg;
  String _erstbegnachstieg;
  String _erstbegdatum;
  String _ringzahl;
  String _wegbeschr;
  String _wegbeschrCZ;
  String _kletterei;
  String _wegname;
  String _wegnameCZ;
  // ignore: unused_field
  String _wegstatus;
  // ignore: unused_field
  String _wegnr;
  Route(
    this._wegId,
    this._gipfelId,
    this._schwierigkeit,
    this._erstbegvorstieg,
    this._erstbegnachstieg,
    this._erstbegdatum,
    this._ringzahl,
    this._wegbeschr,
    this._wegbeschrCZ,
    this._kletterei,
    this._wegname,
    this._wegnameCZ,
    this._wegstatus,
    this._wegnr,
    int commentCountInt,
  ) : super(
          nr: double.parse(_wegnr),
          childCountInt: -1,
          commentCountInt: commentCountInt,
        );

  @override
  String get name {
    return (_wegname.isEmpty) ? _wegnameCZ : _wegname;
  }

  @override
  String get nameCZ {
    return _wegnameCZ;
  }

  /// climbing grade
  String get grade {
    return _schwierigkeit;
  }

  String get climbingStyle {
    return _kletterei.isEmpty ? '' : '[$_kletterei]';
  }

  String get rings {
    return 'Ringe: $_ringzahl';
  }

  String get description {
    return (_wegbeschr == '') ? _wegbeschrCZ : _wegbeschr;
  }

  String get firstAscentDate {
    if (_erstbegdatum != '0000-00-00' &&
        !_erstbegnachstieg.contains(r'um ') &&
        !_erstbegnachstieg.contains(r'vor ')) {
      final date = DateFormat('yyyy-MM-dd').parse(_erstbegdatum); //parse date
      return DateFormat('d.M.yy')
          .format(date); // use same format as in the climbing guide
    } else if (_erstbegnachstieg.contains(r'vor ')) {
      //year of ascent in _erstbegnachstieg
      return _erstbegnachstieg.substring(_erstbegnachstieg.indexOf(r'vor '));
    } else if (_erstbegnachstieg.contains(r'um ')) {
      //year of ascent in _erstbegnachstieg
      return _erstbegnachstieg.substring(_erstbegnachstieg.indexOf(r'um '));
    } else {
      return '';
    }
  }

  String get firstAscentLead {
    return _erstbegvorstieg;
  }

  String get firstAscentPartners {
    if (_erstbegnachstieg.contains(r'vor ')) {
      // ascent without known date, but before a certain year ...
      return _erstbegnachstieg.indexOf(r'vor') == 0
          ? ''
          : _erstbegnachstieg.substring(0, _erstbegnachstieg.indexOf(r', '));
    } else if (_erstbegnachstieg.contains(r'um ')) {
      // ascent without known date, but around a certain year ...
      return _erstbegnachstieg.indexOf(r'um') == 0
          ? ''
          : _erstbegnachstieg.substring(0, _erstbegnachstieg.indexOf(r', '));
    } else {
      return _erstbegnachstieg;
    }
  }

  int get routeId {
    return _wegId;
  }

  factory Route.fromSql(Map<String, Object?> sqlResult) {
    return Route(
      int.parse(sqlResult.values.elementAt(0).toString()),
      int.parse(sqlResult.values.elementAt(1).toString()),
      sqlResult.values.elementAt(2).toString(),
      sqlResult.values.elementAt(3).toString(),
      sqlResult.values.elementAt(4).toString(),
      sqlResult.values.elementAt(5).toString(),
      sqlResult.values.elementAt(6).toString(),
      sqlResult.values.elementAt(7).toString(),
      sqlResult.values.elementAt(8).toString(),
      sqlResult.values.elementAt(9).toString(),
      sqlResult.values.elementAt(10).toString(),
      sqlResult.values.elementAt(11).toString(),
      sqlResult.values.elementAt(12).toString(),
      sqlResult.values.elementAt(13).toString(),
      int.parse(sqlResult.values.elementAt(14).toString()), //comment count
    );
  }
}

class Routes {
  final Rock parentRock;
  Routes(this.parentRock);

  Future<List<Route>> getRoutes() async {
    final sqlResults = SqlHandler().queryRoutes(parentRock.rockId);
    // maps sqlResults to Route and return
    return sqlResults.then(
      (sqlResultsFinal) => sqlResultsFinal
          .map(
            (sqlRow) => Route.fromSql(sqlRow),
          )
          .toList(),
    );
  }
}
