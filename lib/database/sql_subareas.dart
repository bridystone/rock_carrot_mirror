import 'dart:async';
import 'package:rock_carrot/database/sql.dart';

extension SqlHandlerSubareas on SqlHandler {
  FutureOr<int> deleteSubareasIncludingComments(int gebietid) {
    return database.then((db) {
      // delete comments
      db.delete(
        SqlHandler.commentsTablename,
        where: 'gebietid = ?',
        whereArgs: [gebietid],
      );
      // delete subareas
      return db.delete(
        SqlHandler.subareasTablename,
        where: 'gebietid = ?',
        whereArgs: [gebietid],
      );
    });
  }

  // query Subarea Information
  Future<List<Map<String, Object?>>> querySubareas(int gebietid) {
    return database.then((db) => db.rawQuery(
          'SELECT'
          ' teilgebiet.*,'
          ' COUNT(DISTINCT gipfel.gipfel_id) as gipfel_count,'
          ' COUNT(DISTINCT komment.komment_id) as komment_count'
          ' FROM teilgebiet'
          ' LEFT JOIN gipfel' // counting rocks
          ' ON teilgebiet.sektor_ID = gipfel.sektorid'
          ' LEFT JOIN komment' // counting comments
          ' ON teilgebiet.sektor_ID = komment.sektorid'
          ' WHERE teilgebiet.gebietid = ?'
          ' GROUP BY teilgebiet.sektor_ID',
          [gebietid],
        ));
  }
}
