part of 'filtered_rocks_bloc.dart';

@freezed
class FilteredRocksState with _$FilteredRocksState {
  const factory FilteredRocksState.initial() = _Initial;
  const factory FilteredRocksState.readyForUI(
    List<Rock> filteredRocks,
    String? activeFilter,
    RocksSorting activeSorting,
  ) = _ReadyForUI;
}
