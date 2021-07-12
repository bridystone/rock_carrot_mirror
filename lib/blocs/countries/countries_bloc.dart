import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_countries.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/web/sandstein.dart';

part 'countries_event.dart';
part 'countries_state.dart';
part 'countries_bloc.freezed.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc() : super(_Initial()) {
    on<_RequestCountries>(_onRequestCountries);
    on<_UpdateCountries>(_onUpdateCountries);
  }

  void _onRequestCountries(
    _RequestCountries event,
    Emit<CountriesState> emit,
  ) async {
    try {
      emit(CountriesState.inProgress());
      final sqlResults = await SqlHandler().queryCountries();
      final countries =
          sqlResults.map((sqlRow) => Country.fromJson(sqlRow)).toList();

      emit(CountriesState.countriesReceived(countries));
    } catch (e) {
      emit(CountriesState.failure(e));
      emit(CountriesState.countriesReceived([]));
    }
  }

  void _onUpdateCountries(
    _UpdateCountries event,
    Emit<CountriesState> emit,
  ) async {
    try {
      emit(CountriesState.updateInProgress('countries', 0));
      final result = await _updateCountries();
      emit(CountriesState.updateInProgress('countries', 100));
      emit(CountriesState.updateFinished(result));
    } catch (e) {
      emit(CountriesState.failure(e));
    } finally {
      add(CountriesEvent.requestCountries());
    }
  }

  /// update data from Sandsteinklettern
  ///
  /// fetch the data, then delete records, finally insert new data
  Future<int> _updateCountries() async {
    var jsonData = Sandstein().fetchJsonFromWeb(Sandstein.countriesWebTarget);
    await SqlHandler().deleteCountries();
    return SqlHandler().insertJsonData(SqlHandler.countriesTablename, jsonData);
  }
}
