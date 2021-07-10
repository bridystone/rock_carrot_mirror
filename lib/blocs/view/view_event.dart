part of 'view_bloc.dart';

@freezed
class ViewEvent with _$ViewEvent {
  const factory ViewEvent.toCountries() = _ToCountries;
  const factory ViewEvent.toAreas(Country? country) = _ToAreas;
  const factory ViewEvent.toSubareas(Area? area) = _ToSubareas;
  const factory ViewEvent.toRocks(Subarea? subarea) = _ToRocks;
  const factory ViewEvent.toRoutes(Rock? rock) = _ToRoutes;
}
