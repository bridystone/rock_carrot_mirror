import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_countries.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/web/sandstein.dart';

class CountriesBloc extends BaseBloc {
  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults = await SqlHandler().queryCountries();
    return sqlResults.map((sqlRow) => Country.fromJson(sqlRow)).toList();
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
