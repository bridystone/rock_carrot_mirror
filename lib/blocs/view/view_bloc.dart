import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/countries/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas/subareas_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

part 'view_event.dart';
part 'view_state.dart';
part 'view_bloc.freezed.dart';

class ViewBloc extends Bloc<ViewEvent, ViewState> {
  final CountriesBloc countriesBloc;
  final AreasBloc areasBloc;
  final SubareasBloc subareasBloc;
  final RocksBloc rocksBloc;
  final RoutesBloc routesBloc;

  ViewBloc({
    required this.countriesBloc,
    required this.areasBloc,
    required this.subareasBloc,
    required this.rocksBloc,
    required this.routesBloc,
  }) : super(_Countries()) {
    on<_ToCountries>(_onToCountries);
    on<_ToAreas>(_onToAreas);
    on<_ToSubareas>(_onToSubreas);
    on<_ToRocks>(_onToRocks);
    on<_ToRoutes>(_onToRoutes);
  }

  void _onToCountries(
    _ToCountries event,
    Emit<ViewState> emit,
  ) async {
    countriesBloc.add(CountriesEvent.requestCountries());
    emit(ViewState.countries());
  }

  void _onToAreas(
    _ToAreas event,
    Emit<ViewState> emit,
  ) async {
    if (event.country != null) {
      areasBloc.add(AreasEvent.requestAreas(event.country!));
      // on new Area -> invalidate all subitems
      subareasBloc.add(SubareasEvent.invalidateSubareas());
      rocksBloc.add(RocksEvent.invalidateRocks());
      routesBloc.add(RoutesEvent.invalidateRoutes());
    }
    emit(ViewState.areas(event.country));
  }

  void _onToSubreas(
    _ToSubareas event,
    Emit<ViewState> emit,
  ) async {
    if (event.area != null) {
      subareasBloc.add(SubareasEvent.requestSubareas(event.area!));
      rocksBloc.add(RocksEvent.invalidateRocks());
      routesBloc.add(RoutesEvent.invalidateRoutes());
    }
    emit(ViewState.subareas(event.area));
  }

  void _onToRocks(
    _ToRocks event,
    Emit<ViewState> emit,
  ) async {
    if (event.subarea != null) {
      rocksBloc.add(RocksEvent.requestRocks(event.subarea!));
      routesBloc.add(RoutesEvent.invalidateRoutes());
    }
    emit(ViewState.rocks(event.subarea));
  }

  void _onToRoutes(
    _ToRoutes event,
    Emit<ViewState> emit,
  ) async {
    if (event.rock != null) {
      routesBloc.add(RoutesEvent.requestRoutes(event.rock!));
    }
    emit(ViewState.routes(event.rock));
  }
}
