part of 'comments_bloc.dart';

enum CommentType { Area, Subarea, Rock, Route }

@freezed
class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.requestComments(
    CommentType type,
    int id,
  ) = _RequestComments;
}
