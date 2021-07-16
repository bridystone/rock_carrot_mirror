import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/comments/comments_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/material/comments_bottom_sheet.dart';

class CommentsIcon extends StatelessWidget {
  final CommentType commentType;
  final int id;
  final bool enabled;

  const CommentsIcon({
    Key? key,
    required this.commentType,
    required this.id,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommentsBloc, CommentsState>(
      listener: (context, state) {
        state.maybeWhen(
          commentsReceived: (comments) =>
              CommentsBottomSheet().showCommentsSheet(context, comments),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return enabled
            ? IconButton(
                icon: Icon(
                  Icons.comment,
                ),
                onPressed: () => BlocProvider.of<CommentsBloc>(context)
                    .add(CommentsEvent.requestComments(commentType, id)))
            : Icon(
                Icons.comment,
                color: Colors.grey,
              );
      },
    );
  }
}
