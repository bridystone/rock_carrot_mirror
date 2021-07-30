// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseitem_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension CountryBlocCopyWith on CountryBloc {
  CountryBloc copyWith({
    AreasBloc? childBloc,
    Country? item,
  }) {
    return CountryBloc(
      childBloc: childBloc ?? this.childBloc,
      item: item ?? this.item,
    );
  }
}

extension AreaBlocCopyWith on AreaBloc {
  AreaBloc copyWith({
    SubareasBloc? childBloc,
    Area? item,
  }) {
    return AreaBloc(
      childBloc: childBloc ?? this.childBloc,
      item: item ?? this.item,
    );
  }
}

extension SubareaBlocCopyWith on SubareaBloc {
  SubareaBloc copyWith({
    RocksBloc? childBloc,
    Subarea? item,
  }) {
    return SubareaBloc(
      childBloc: childBloc ?? this.childBloc,
      item: item ?? this.item,
    );
  }
}

extension RockBlocCopyWith on RockBloc {
  RockBloc copyWith({
    RoutesBloc? childBloc,
    Rock? item,
  }) {
    return RockBloc(
      childBloc: childBloc ?? this.childBloc,
      item: item ?? this.item,
    );
  }
}

extension RouteBlocCopyWith on RouteBloc {
  RouteBloc copyWith({
    Route? item,
  }) {
    return RouteBloc(
      item: item ?? this.item,
    );
  }
}
