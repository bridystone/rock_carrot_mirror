part of 'comments_bloc.dart';

abstract class CommentsState extends Equatable {
  const CommentsState();

  @override
  List<Object> get props => [];
}

class CommentsStateInitial extends CommentsState {}

class CommentsStateInProgress extends CommentsState {}

class CommentsStateCommentsReceived extends CommentsState {
  final List<Comment> comments;
  const CommentsStateCommentsReceived(this.comments);

  @override
  List<Object> get props => [comments];
}

class CommentsStateFailure extends CommentsState {
  final dynamic exception;
  const CommentsStateFailure(this.exception);

  @override
  List<Object> get props => [exception];
}
