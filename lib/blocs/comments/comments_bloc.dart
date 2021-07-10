import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc() : super(_Initial());

  @override
  Stream<CommentsState> mapEventToState(
    CommentsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
