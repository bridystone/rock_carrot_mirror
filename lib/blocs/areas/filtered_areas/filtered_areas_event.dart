part of 'filtered_areas_bloc.dart';

@freezed
class FilteredAreasEvent with _$FilteredAreasEvent {
  const factory FilteredAreasEvent.filterUpdated(
    String? newFilter,
  ) = _FilterUpdated;
  const factory FilteredAreasEvent.sortingUpdated(
    AreasSorting newSorting,
  ) = _SortingUpdated;
  const factory FilteredAreasEvent.areasUpdated(
    List<Area> areas,
  ) = _AreasUpdated;
}
