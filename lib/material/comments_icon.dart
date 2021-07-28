import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/material/comments_bottom_sheet.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

class CommentsIcon extends StatelessWidget {
  final Baseitem baseitem;
  final bool enabled;

  const CommentsIcon({
    Key? key,
    required this.baseitem,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommentsBloc, CommentsState>(
      listener: (context, state) {
        if (state is CommentsStateCommentsReceived) {
          CommentsBottomSheet().showCommentsSheet(
              context,
              state.comments,
              baseitem is Area
                  ? CommentType.Area
                  : baseitem is Subarea
                      ? CommentType.Subarea
                      : CommentType.Rock);
        }
      },
      builder: (context, state) {
        return enabled
            ? IconButton(
                icon: Icon(
                  Icons.comment,
                ),
                onPressed: () => BlocProvider.of<CommentsBloc>(context)
                    .add(CommentsEventRequestComments(baseitem)))
            : IconButton(
                icon: Icon(Icons.comment),
                color: Colors.grey,
                onPressed: () => null,
              );
      },
    );
  }
}
