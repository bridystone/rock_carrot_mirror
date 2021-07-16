part of 'comments_bloc.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.initial() = _Initial;
  const factory CommentsState.inProgress() = _InProgress;
  const factory CommentsState.commentsReceived(
    List<Comment> comments,
  ) = _CommentsReceived;
  const factory CommentsState.failure(dynamic exception) = _Failure;
}
