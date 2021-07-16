part of 'view_bloc.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState.countries() = _Countries;
  const factory ViewState.areas(Country country) = _Areas;
  const factory ViewState.subareas(Area area) = _Subareas;
  const factory ViewState.rocks(Subarea subarea) = _Rocks;
  const factory ViewState.routes(Rock rock) = _Routes;
}
