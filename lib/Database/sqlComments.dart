import 'dart:async';
import 'package:yacguide_flutter/Database/sql.dart';

extension SqlHandlerComments on SqlHandler {
  FutureOr<int> deleteComment(int sektorid) async {
    return database.then(
      (db) => db.delete(
        'komment',
        where: 'sektorid = ?',
        whereArgs: [sektorid],
      ),
    );
  }

  Future<List<Map<String, Object?>>> queryComment(
    int sektorid,
    int gipfelid,
    int wegid,
  ) async {
    return database.then((db) => db.query(
          'komment',
          columns: [
            'qual',
            'sicher',
            'nass',
            'kommentar',
            'schwer',
            'geklettert',
            'begehung'
          ],
          where: 'sektorid = ? AND gipfelid = ? AND wegid = ?',
          whereArgs: [sektorid, gipfelid, wegid],
        ));
  }
}
