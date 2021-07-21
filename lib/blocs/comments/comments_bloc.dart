import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_comments.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc() : super(CommentsStateInitial()) {
    on<CommentsEventRequestComments>(_onRequestComments);
  }

  void _onRequestComments(
    CommentsEventRequestComments event,
    Emit<CommentsState> emit,
  ) async {
    try {
      emit(CommentsStateInProgress());
      final sqlResults;
      if (event.baseitem is Area) {
        sqlResults =
            await SqlHandler().queryAreaComments((event.baseitem as Area).id);
      } else if (event.baseitem is Subarea) {
        sqlResults = await SqlHandler()
            .querySubareaComments((event.baseitem as Subarea).id);
      } else if (event.baseitem is Rock) {
        sqlResults =
            await SqlHandler().queryRockComments((event.baseitem as Rock).id);
      } else /*if (event.baseitem is Route) */ {
        sqlResults = await SqlHandler()
            .queryRouteCommentsInclTT((event.baseitem as Route).id);
      }

      if ((sqlResults as List<Map<String, Object?>>).isNotEmpty) {
        final comments =
            sqlResults.map((sqlRow) => Comment.fromJson(sqlRow)).toList();

        emit(CommentsStateCommentsReceived(comments));
      } else {
        emit(CommentsStateCommentsReceived([]));
      }
    } catch (e) {
      emit(CommentsStateFailure(e));
    }
  }
}
