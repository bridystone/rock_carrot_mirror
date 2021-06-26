import 'dart:async';
import 'package:rock_carrot/database/sql.dart';

extension SqlHandlerRoutes on SqlHandler {
  Future<List<Map<String, Object?>>> queryRoutes(
    int gipfelid,
  ) {
    return database.then((db) => db.rawQuery(
          '''
          SELECT
            wege.*,
            COUNT(DISTINCT komment.komment_id) + 
            COUNT(DISTINCT tt_comments.id) as comment_count
            FROM wege

            -- sandstein comments
            LEFT OUTER JOIN komment
            ON wege.weg_id = komment.wegid

            -- tt comments if available
            LEFT JOIN tt_mapping_routes
            ON tt_mapping_routes.sandstein_routeid = wege.weg_id
            LEFT JOIN tt_comments
            ON tt_comments.routeid = tt_mapping_routes.tt_routeid

          WHERE wege.gipfelid = ?
          GROUP BY wegnr
          ''',
          [gipfelid],
        ));
  }
}
