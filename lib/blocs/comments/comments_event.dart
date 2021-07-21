part of 'comments_bloc.dart';

abstract class CommentsEvent extends Equatable {
  const CommentsEvent();

  @override
  List<Object> get props => [];
}

class CommentsEventRequestComments extends CommentsEvent {
  final Baseitem baseitem;
  const CommentsEventRequestComments(this.baseitem);

  @override
  List<Object> get props => [baseitem];
}
