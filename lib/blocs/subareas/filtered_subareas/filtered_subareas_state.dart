part of 'filtered_subareas_bloc.dart';

@freezed
class FilteredSubareasState with _$FilteredSubareasState {
  const factory FilteredSubareasState.initial() = _Initial;
  const factory FilteredSubareasState.readyForUI(
    List<Subarea> filteredSubareas,
    String? activeFilter,
    SubareasSorting activeSorting,
  ) = _ReadyForUI;
}
