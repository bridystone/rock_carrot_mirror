import 'package:bloc/bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_routes.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

class RoutesBloc extends BaseBloc {
  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults = await SqlHandler().queryRoutes((baseitem as Rock).id);
    return sqlResults.map((sqlRow) => Route.fromJson(sqlRow)).toList();
  }

  @override
  void onRequestData(
    BaseEventRequestData event,
    Emitter<BaseState> emit,
  ) async {
    try {
      emit(BaseStateInProgress());
      final items = await requestData(event.baseitem);
      final blocedItems =
          items.map((item) => RouteBloc(item: item as Route)).toList();
      emit(BaseStateDataReceived(
          baseitem:
              RockBloc(item: event.baseitem as Rock, childBloc: RoutesBloc()),
          blocedItems: blocedItems));
    } on Exception catch (exception) {
      emit(BaseStateFailure(exception));
      emit(BaseStateDataReceived(
          baseitem:
              RockBloc(item: event.baseitem as Rock, childBloc: RoutesBloc()),
          blocedItems: []));
    }
  }

  @override
  Future<int> updateData(Baseitem? baseitem) {
    throw UnimplementedError();
  }

  @override
  Future<int> updateDataIntensive(Baseitem baseitem) {
    throw UnimplementedError();
  }
}
