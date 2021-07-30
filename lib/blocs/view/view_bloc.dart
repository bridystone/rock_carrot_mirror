import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/blocs/countries_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/main.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';

part 'view_event.dart';
part 'view_state.dart';
part 'view_bloc.freezed.dart';

class ViewBloc extends Bloc<ViewEvent, ViewState> {
  ViewBloc() : super(_Initial()) {
    on<_ToCountries>(_onToCountries);
    on<_ToAreas>(_onToAreas);
    on<_ToSubareas>(_onToSubreas);
    on<_ToRocks>(_onToRocks);
    on<_ToRoutes>(_onToRoutes);

    on<_ToCountriesWithoutReload>((event, emit) => emit(ViewState.countries()));
    on<_ToAreasWithoutReload>((event, emit) =>
/*        areasBloc.getBaseitemOrNull != null
            ? emit(ViewState.areas(areasBloc.getBaseitemOrNull as CountryBloc))
            : */
        null);
    on<_ToSubareasWithoutReload>((event, emit) =>
        /*subareasBloc
                .getBaseitemOrNull !=
            null
        ? emit(ViewState.subareas(subareasBloc.getBaseitemOrNull as AreaBloc))
        :*/
        null);
    on<_ToRocksWithoutReload>((event, emit) =>
        /*
        rocksBloc.getBaseitemOrNull != null
            ? emit(ViewState.rocks(rocksBloc.getBaseitemOrNull as SubareaBloc))
            : */
        null);
    on<_ToRoutesWithoutReload>((event, emit) =>
        /*
        routesBloc.getBaseitemOrNull != null
            ? emit(ViewState.routes(routesBloc.getBaseitemOrNull as RockBloc))
            : */
        null);
  }

  void _onToCountries(
    _ToCountries event,
    Emit<ViewState> emit,
  ) async {
    // TODO: WORKAROUND for Application SupportDirectory (set Global Variable)
    // This is the first async function making this possible
    globalApplicationSupportDirectory ??=
        await getApplicationSupportDirectory();
    //countriesBloc.add(BaseEventRequestData());
    emit(ViewState.countries());
  }

  void _onToAreas(
    _ToAreas event,
    Emit<ViewState> emit,
  ) async {
    // on new Area -> invalidate all subitems
    /*
    if (getCountryOrNull?.item.name != event.country.item.name) {
      subareasBloc.add(BaseEventInvalidateData());
      rocksBloc.add(BaseEventInvalidateData());
      routesBloc.add(BaseEventInvalidateData());
    }*/
    //areasBloc.add(BaseEventRequestData(event.country.item));

    emit(ViewState.areas(event.country));
  }

  void _onToSubreas(
    _ToSubareas event,
    Emit<ViewState> emit,
  ) async {
    /*
    // on new Subarea -> invalidate all subitems
    if (getAreaOrNull?.item.id != event.area.item.id) {
      rocksBloc.add(BaseEventInvalidateData());
      routesBloc.add(BaseEventInvalidateData());
    }

    subareasBloc.add(BaseEventRequestData(event.area.item));
*/
    emit(ViewState.subareas(event.area));
  }

  void _onToRocks(
    _ToRocks event,
    Emit<ViewState> emit,
  ) async {
    /*-> invalidate all subitems
    if (getSubareaOrNull?.item.id != event.subarea.item.id) {
      routesBloc.add(BaseEventInvalidateData());
    }
    rocksBloc.add(BaseEventRequestData(event.subarea.item));
*/
    emit(ViewState.rocks(event.subarea));
  }

  void _onToRoutes(
    _ToRoutes event,
    Emit<ViewState> emit,
  ) async {
    /*
    routesBloc.add(BaseEventRequestData(event.rock.item));
*/
    emit(ViewState.routes(event.rock));
  }
/*
  CountryBloc? get getCountryOrNull =>
      areasBloc.getBaseitemOrNull as CountryBloc?;
  AreaBloc? get getAreaOrNull => subareasBloc.getBaseitemOrNull as AreaBloc?;
  SubareaBloc? get getSubareaOrNull =>
      rocksBloc.getBaseitemOrNull as SubareaBloc?;
  RockBloc? get getRockOrNull => routesBloc.getBaseitemOrNull as RockBloc?;

  bool get isAreasValid => getCountryOrNull != null;
  bool get isSubareasValid => getAreaOrNull != null;
  bool get isRocksValid => getSubareaOrNull != null;
  bool get isRoutesValid => getRockOrNull != null;
  */
}
