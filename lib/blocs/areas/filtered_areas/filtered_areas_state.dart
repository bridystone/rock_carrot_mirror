part of 'filtered_areas_bloc.dart';

@freezed
class FilteredAreasState with _$FilteredAreasState {
  const factory FilteredAreasState.initial() = _Initial;
  const factory FilteredAreasState.readyForUI(
    List<Area> filteredTodos,
    String? activeFilter,
    AreasSorting activeSorting,
  ) = _ReadyForUI;
}
