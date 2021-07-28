import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';

class CommentsBottomSheet {
  void showCommentsSheet(
    BuildContext context,
    List<Comment> comments,
    CommentType commentType,
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
                      child: Text(AppLocalizations.of(context)
                          .statusNoCommentsAvailable),
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
                      return _commentsItemTile(
                        comments[i],
                        commentType,
                        context,
                      );
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
  Widget _commentsItemTile(
    Comment comment,
    CommentType commentType,
    BuildContext context,
  ) {
    final locale = AppLocalizations.of(context);
    return Column(children: [
      // status row top
      Row(
        children: [
          Text(
            DateFormat('dd.MM.yy').format(comment.date) +
                ' ${locale.commentsUsername}:' +
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
          if (commentType == CommentType.Area &&
              comment.qualityIcons.areaIcon != null) ...[
            Text('${locale.commentsQuality}:'),
            Icon(
              comment.qualityIcons.areaIcon,
              size: 15,
            ),
          ],
          if (commentType == CommentType.Subarea &&
              comment.qualityIcons.subareaIcon != null) ...[
            Text('${locale.commentsQuality}:'),
            Icon(
              comment.qualityIcons.subareaIcon,
              size: 15,
            ),
          ],
          if (commentType == CommentType.Rock &&
              comment.qualityIcons.rockIcon != null) ...[
            Text('${locale.commentsQuality}:'),
            Icon(
              comment.qualityIcons.rockIcon,
              size: 15,
            ),
          ],
          if (commentType == CommentType.Route &&
              comment.qualityIcons.routeIcon != null) ...[
            Text('${locale.commentsQuality}:'),
            Icon(
              comment.qualityIcons.routeIcon,
              size: 15,
            ),
          ],
          if (comment.safetyIcon != null) ...[
            Text(' | ${locale.commentsSafety}:'),
            Icon(
              comment.safetyIcon,
              size: 15,
            ),
          ],
          if (comment.wetnessIcon != null) ...[
            Text(' | ${locale.commentsWetness}:'),
            Icon(
              comment.wetnessIcon,
              size: 15,
            ),
          ],
          if (comment.difficulty != null) ...[
            Text(
                ' | ${locale.commentsGrade}: ${comment.difficulty!.Difficulty}'),
          ]
        ]),
      ]),
      Divider(),
    ]);
  }
}
