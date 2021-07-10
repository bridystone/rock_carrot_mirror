part of 'comments_bloc.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.initial() = _Initial;
  const factory CommentsState.inProgress() = _InProgress;
  const factory CommentsState.dataRecevied(
    List<Comment> comments,
  ) = _DataReceived;
  const factory CommentsState.failure() = _Failure;
}
