import 'package:bloc/bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_areas.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/web/sandstein.dart';

class AreasBloc extends BaseBloc {
  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults =
        await SqlHandler().queryAreas((baseitem as Country).name);
    return sqlResults.map((sqlRow) => Area.fromJson(sqlRow)).toList();
  }

  @override
  void onRequestData(
    BaseEventRequestData event,
    Emitter<BaseState> emit,
  ) async {
    try {
      emit(BaseStateInProgress());
      final items = await requestData(event.baseitem);
      final blocedItems = items
          .map((item) => AreaBloc(
              item: item as Area,
              childBloc: SubareasBloc()..add(BaseEventRequestData(item))))
          .toList();
      emit(BaseStateDataReceived(
          baseitem: CountryBloc(
              item: event.baseitem as Country, childBloc: AreasBloc()),
          blocedItems: blocedItems));
    } on Exception catch (exception) {
      emit(BaseStateFailure(exception));
      emit(BaseStateDataReceived(
          baseitem: CountryBloc(
              item: event.baseitem! as Country, childBloc: AreasBloc()),
          blocedItems: []));
    }
  }

  @override
  Future<int> updateData(Baseitem? baseitem) async {
    var jsonData = Sandstein().fetchJsonFromWeb(
      Sandstein.areasWebTarget,
      Sandstein.areasWebQuery,
      (baseitem as Country).name,
    );
    await SqlHandler().deleteAreas(baseitem.name);

    return SqlHandler().insertJsonData(SqlHandler.areasTablename, jsonData);
  }

  @override
  Future<int> updateDataIntensive(Baseitem baseitem) {
    throw UnimplementedError();
  }
}
