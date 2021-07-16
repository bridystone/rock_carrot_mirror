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

    on<_ToCountriesWithoutReload>((event, emit) => emit(ViewState.countries()));
    on<_ToAreasWithoutReload>((event, emit) =>
        areasBloc.getCountryOrNull != null
            ? emit(ViewState.areas(areasBloc.getCountryOrNull!))
            : null);
    on<_ToSubareasWithoutReload>((event, emit) =>
        subareasBloc.getAreaOrNull != null
            ? emit(ViewState.subareas(subareasBloc.getAreaOrNull!))
            : null);
    on<_ToRocksWithoutReload>((event, emit) =>
        rocksBloc.getSubareaOrNull != null
            ? emit(ViewState.rocks(rocksBloc.getSubareaOrNull!))
            : null);
    on<_ToRoutesWithoutReload>((event, emit) => routesBloc.getRockOrNull != null
        ? emit(ViewState.routes(routesBloc.getRockOrNull!))
        : null);
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
    // on new Area -> invalidate all subitems
    if (areasBloc.getCountryOrNull != event.country) {
      subareasBloc.add(SubareasEvent.invalidateSubareas());
      rocksBloc.add(RocksEvent.invalidateRocks());
      routesBloc.add(RoutesEvent.invalidateRoutes());
    }
    areasBloc.add(AreasEvent.requestAreas(event.country));

    emit(ViewState.areas(event.country));
  }

  void _onToSubreas(
    _ToSubareas event,
    Emit<ViewState> emit,
  ) async {
    // on new Subarea -> invalidate all subitems
    if (subareasBloc.getAreaOrNull != event.area) {
      rocksBloc.add(RocksEvent.invalidateRocks());
      routesBloc.add(RoutesEvent.invalidateRoutes());
    }

    subareasBloc.add(SubareasEvent.requestSubareas(event.area));

    emit(ViewState.subareas(event.area));
  }

  void _onToRocks(
    _ToRocks event,
    Emit<ViewState> emit,
  ) async {
    // on new Rock -> invalidate all subitems
    if (rocksBloc.getSubareaOrNull != event.subarea) {
      routesBloc.add(RoutesEvent.invalidateRoutes());
    }
    rocksBloc.add(RocksEvent.requestRocks(event.subarea));

    emit(ViewState.rocks(event.subarea));
  }

  void _onToRoutes(
    _ToRoutes event,
    Emit<ViewState> emit,
  ) async {
    routesBloc.add(RoutesEvent.requestRoutes(event.rock));

    emit(ViewState.routes(event.rock));
  }

  Country? get getCountryOrNull => areasBloc.getCountryOrNull;
  Area? get getAreaOrNull => subareasBloc.getAreaOrNull;
  Subarea? get getSubareaOrNull => rocksBloc.getSubareaOrNull;
  Rock? get getRockOrNull => routesBloc.getRockOrNull;

  bool get isAreasValid => getCountryOrNull != null;
  bool get isSubareasValid => getAreaOrNull != null;
  bool get isRocksValid => getSubareaOrNull != null;
  bool get isRoutesValid => getRockOrNull != null;
}
