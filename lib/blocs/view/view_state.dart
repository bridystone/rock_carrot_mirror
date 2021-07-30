part of 'view_bloc.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState.initial() = _Initial;
  const factory ViewState.countries() = _Countries;
  const factory ViewState.areas(CountryBloc countryBloc) = _Areas;
  const factory ViewState.subareas(AreaBloc areaBloc) = _Subareas;
  const factory ViewState.rocks(SubareaBloc subareaBloc) = _Rocks;
  const factory ViewState.routes(RockBloc rockBloc) = _Routes;
}
