import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_comments.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc() : super(_Initial()) {
    on<_RequestComments>(_onRequestComments);
  }

  void _onRequestComments(
    _RequestComments event,
    Emit<CommentsState> emit,
  ) async {
    try {
      emit(CommentsState.inProgress());
      final sqlResults;
      switch (event.type) {
        case CommentType.Area:
          sqlResults = await SqlHandler().queryAreaComments(event.id);
          break;
        case CommentType.Subarea:
          sqlResults = await SqlHandler().querySubareaComments(event.id);
          break;
        case CommentType.Rock:
          sqlResults = await SqlHandler().queryRockComments(event.id);
          break;
        case CommentType.Route:
          sqlResults = await SqlHandler().queryRouteCommentsInclTT(event.id);
          break;
      }

      if ((sqlResults as List<Map<String, Object?>>).isNotEmpty) {
        final comments =
            sqlResults.map((sqlRow) => Comment.fromJson(sqlRow)).toList();

        emit(CommentsState.commentsReceived(comments));
      } else {
        emit(CommentsState.commentsReceived([]));
      }
    } catch (e) {
      emit(CommentsState.failure(e));
    }
  }
}
