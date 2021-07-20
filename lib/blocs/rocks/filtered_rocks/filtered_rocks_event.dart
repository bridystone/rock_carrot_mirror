part of 'filtered_rocks_bloc.dart';

@freezed
class FilteredRocksEvent with _$FilteredRocksEvent {
  const factory FilteredRocksEvent.filterUpdated(
    String? newFilter,
  ) = _FilterUpdated;
  const factory FilteredRocksEvent.sortingUpdated(
    RocksSorting newSorting,
  ) = _SortingUpdated;
  const factory FilteredRocksEvent.rocksUpdated(
    List<Rock> rocks,
  ) = _RocksUpdated;
}
