part of 'filtered_base_bloc.dart';

abstract class FilteredBaseState extends Equatable {
  const FilteredBaseState();

  @override
  List<Object> get props => [];
}

class FilteredBaseStateInitial extends FilteredBaseState {}

class FilteredBaseStateReadyForUI extends FilteredBaseState {
  final List<BaseitemBloc> filteredItems;
  final String activeFilter;
  final dynamic activeSorting;

  const FilteredBaseStateReadyForUI({
    required this.filteredItems,
    required this.activeFilter,
    required this.activeSorting,
  });

  @override
  List<Object> get props => [filteredItems, activeFilter, activeSorting];
}
