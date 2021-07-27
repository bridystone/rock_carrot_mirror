import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';

class CommentsBottomSheet {
  void showCommentsSheet(
    BuildContext context,
    List<Comment> comments,
  ) =>
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        builder: (context) {
          if (comments.isEmpty) {
            return Padding(
                padding: EdgeInsets.all(10),
                child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text('no comments available'),
                    )));
          }
          return Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child:
                      // enumerate all comments via ListView Builder
                      ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: comments.length,
                    itemBuilder: (context, i) {
                      return _commentsItemTile(comments[i]);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );

  /// comment tile
  ///
  /// How each comment should look like
  Widget _commentsItemTile(Comment comment) {
    return Column(children: [
      // status row top
      Row(
        children: [
          Text(
            DateFormat('dd.MM.yy').format(comment.date) +
                ' UID:' +
                comment.user,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
      // actual comment
      Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          comment.comment,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 13,
          ),
        ),
      ),
      // statusrow bottom
      Column(children: [
        Row(children: [
          // TODO: proper Icon for quality!
          if (comment.quality != null) ...[
            Text('quality:'),
            Text('${comment.quality}'),
          ],
          /*
          Icon(
                  comment.qualityRouteIcon ?? Icons.minimize,
                  size: 15,
                )
                */
          if (comment.safetyIcon != null) ...[
            Text(' | safety:'),
            Icon(
              comment.safetyIcon,
              size: 15,
            ),
          ],
          if (comment.wetnessIcon != null) ...[
            Text(' | wet:'),
            Icon(
              comment.wetnessIcon,
              size: 15,
            ),
          ],
          if (comment.difficulty != null) ...[
            Text(' | grade: ${comment.difficulty}'),
          ]
        ]),
      ]),
      Divider(),
    ]);
  }
}
