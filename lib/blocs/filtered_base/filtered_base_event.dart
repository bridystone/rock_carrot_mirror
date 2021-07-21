part of 'filtered_base_bloc.dart';

abstract class FilteredBaseEvent extends Equatable {
  const FilteredBaseEvent();

  @override
  List<Object> get props => [];
}

class FilteredBaseEventFilterUpdated extends FilteredBaseEvent {
  final String newFilter;
  const FilteredBaseEventFilterUpdated(this.newFilter);

  @override
  List<Object> get props => [newFilter];
}

class FilteredBaseEventSortingUpdated extends FilteredBaseEvent {
  final dynamic newSorting;
  const FilteredBaseEventSortingUpdated(this.newSorting);

  @override
  List<Object> get props => [newSorting];
}

class FilteredBaseEventDataUpdated extends FilteredBaseEvent {
  final List<Baseitem> newItems;
  const FilteredBaseEventDataUpdated(this.newItems);

  @override
  List<Object> get props => [newItems];
}
