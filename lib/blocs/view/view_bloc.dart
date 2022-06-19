import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rock_carrot/main.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';

part 'view_event.dart';
part 'view_state.dart';
part 'view_bloc.freezed.dart';

class ViewBloc extends Bloc<ViewEvent, ViewState> {
  /// store recent destinations
  CountryBloc? _countryBloc;
  AreaBloc? _areaBloc;
  SubareaBloc? _subareaBloc;
  RockBloc? _rockBloc;

  ViewBloc() : super(_Initial()) {
    on<_ToCountries>(_onToCountries);
    on<_ToAreas>(_onToAreas);
    on<_ToSubareas>(_onToSubreas);
    on<_ToRocks>(_onToRocks);
    on<_ToRoutes>(_onToRoutes);

    on<_ToCountriesWithoutReload>((event, emit) => emit(ViewState.countries()));
    on<_ToAreasWithoutReload>((event, emit) =>
        isAreasValid ? emit(ViewState.areas(_countryBloc!)) : null);
    on<_ToSubareasWithoutReload>((event, emit) =>
        isSubareasValid ? emit(ViewState.subareas(_areaBloc!)) : null);
    on<_ToRocksWithoutReload>((event, emit) =>
        isRocksValid ? emit(ViewState.rocks(_subareaBloc!)) : null);
    on<_ToRoutesWithoutReload>((event, emit) =>
        isRoutesValid ? emit(ViewState.routes(_rockBloc!)) : null);
  }

  void _onToCountries(
    _ToCountries event,
    Emitter<ViewState> emit,
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
    Emitter<ViewState> emit,
  ) async {
    // on new Area -> invalidate all subitems
    if (_countryBloc?.item.name != event.country.item.name) {
      _areaBloc = null;
      _subareaBloc = null;
      _rockBloc = null;
    }

    _countryBloc = event.country;
    emit(ViewState.areas(event.country));
  }

  void _onToSubreas(
    _ToSubareas event,
    Emitter<ViewState> emit,
  ) async {
    if (_areaBloc?.item.name != event.area.item.name) {
      _subareaBloc = null;
      _rockBloc = null;
    }

    _areaBloc = event.area;
    emit(ViewState.subareas(event.area));
  }

  void _onToRocks(
    _ToRocks event,
    Emitter<ViewState> emit,
  ) async {
    if (_subareaBloc?.item.name != event.subarea.item.name) {
      _rockBloc = null;
    }
    _subareaBloc = event.subarea;
    emit(ViewState.rocks(event.subarea));
  }

  void _onToRoutes(
    _ToRoutes event,
    Emitter<ViewState> emit,
  ) async {
    _rockBloc = event.rock;
    emit(ViewState.routes(event.rock));
  }

  bool get isAreasValid => _countryBloc != null;
  bool get isSubareasValid => _areaBloc != null;
  bool get isRocksValid => _subareaBloc != null;
  bool get isRoutesValid => _rockBloc != null;
}
