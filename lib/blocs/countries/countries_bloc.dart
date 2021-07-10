import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_countries.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

part 'countries_event.dart';
part 'countries_state.dart';
part 'countries_bloc.freezed.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc() : super(_Initial()) {
    on<_RequestCountries>(_onRequestCountries);
  }

  void _onRequestCountries(
    _RequestCountries event,
    Emit<CountriesState> emit_dummy,
  ) async {
    try {
      emit(CountriesState.inProgress());
      final sqlResults = await SqlHandler().queryCountries();
      final countries =
          sqlResults.map((sqlRow) => Country.fromJson(sqlRow)).toList();

      emit(CountriesState.countriesReceived(countries));
    } catch (e) {
      emit(CountriesState.failure());
      emit(CountriesState.countriesReceived([]));
    }
  }
}
