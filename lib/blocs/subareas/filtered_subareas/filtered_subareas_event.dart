part of 'filtered_subareas_bloc.dart';

@freezed
class FilteredSubareasEvent with _$FilteredSubareasEvent {
  const factory FilteredSubareasEvent.filterUpdated(
    String? newFilter,
  ) = _FilterUpdated;
  const factory FilteredSubareasEvent.sortingUpdated(
    SubareasSorting newSorting,
  ) = _SortingUpdated;
  const factory FilteredSubareasEvent.subareasUpdated(
    List<Subarea> subareas,
  ) = _SubareasUpdated;
}
