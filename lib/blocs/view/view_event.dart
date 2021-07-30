part of 'view_bloc.dart';

@freezed
class ViewEvent with _$ViewEvent {
  const factory ViewEvent.toCountries() = _ToCountries;
  const factory ViewEvent.toAreas(CountryBloc country) = _ToAreas;
  const factory ViewEvent.toSubareas(AreaBloc area) = _ToSubareas;
  const factory ViewEvent.toRocks(SubareaBloc subarea) = _ToRocks;
  const factory ViewEvent.toRoutes(RockBloc rock) = _ToRoutes;

  const factory ViewEvent.toCountriesWithoutReload() =
      _ToCountriesWithoutReload;
  const factory ViewEvent.toAreasWithoutReload() = _ToAreasWithoutReload;
  const factory ViewEvent.toSubareasWithoutReload() = _ToSubareasWithoutReload;
  const factory ViewEvent.toRocksWithoutReload() = _ToRocksWithoutReload;
  const factory ViewEvent.toRoutesWithoutReload() = _ToRoutesWithoutReload;
}
