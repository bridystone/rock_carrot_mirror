import 'package:bloc/bloc.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_countries.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/web/sandstein.dart';

class CountriesBloc extends BaseBloc {
  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults = await SqlHandler().queryCountries();
    return sqlResults.map((sqlRow) => Country.fromJson(sqlRow)).toList();
  }

  @override
  void onRequestData(
    BaseEventRequestData event,
    Emit<BaseState> emit,
  ) async {
    try {
      emit(BaseStateInProgress());
      final items = await requestData(event.baseitem);
      final blocedItems = items
          .map((item) =>
              CountryBloc(item: item as Country, childBloc: AreasBloc()))
          .toList();
      emit(BaseStateDataReceived(
          baseitem: null,
//          baseitem: CountryBloc(
//              item: event.baseitem as Country, childBloc: AreasBloc()),
          blocedItems: blocedItems));
    } on Exception catch (exception) {
      emit(BaseStateFailure(exception));
      emit(BaseStateDataReceived(baseitem: null,
//          baseitem: CountryBloc(
//              item: event.baseitem! as Country, childBloc: AreasBloc()),
          blocedItems: []));
    }
  }

  @override
  Future<int> updateData(Baseitem? baseitem) async {
    // TODO: json Fetch await - before deleting data
    var jsonData = Sandstein().fetchJsonFromWeb(Sandstein.countriesWebTarget);
    await SqlHandler().deleteCountries();
    return SqlHandler().insertJsonData(SqlHandler.countriesTablename, jsonData);
  }

  @override
  Future<int> updateDataIntensive(Baseitem baseitem) {
    throw UnimplementedError();
  }
}
