import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/blocs/rocks_bloc.dart';
import 'package:rock_carrot/blocs/routes_bloc.dart';
import 'package:rock_carrot/blocs/subareas_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

part 'baseitem_bloc.g.dart';

class BaseitemBloc extends Equatable {
  const BaseitemBloc();

  @override
  List<Object?> get props => [];
}

@CopyWith()
class CountryBloc extends BaseitemBloc {
  final Country item;
  final AreasBloc childBloc;

  const CountryBloc({required this.item, required this.childBloc});

  @override
  List<Object?> get props => [item, childBloc];
}

@CopyWith()
class AreaBloc extends BaseitemBloc {
  final Area item;
  final SubareasBloc childBloc;

  const AreaBloc({required this.item, required this.childBloc});

  @override
  List<Object?> get props => [item, childBloc];
}

@CopyWith()
class SubareaBloc extends BaseitemBloc {
  final Subarea item;
  final RocksBloc childBloc;

  const SubareaBloc({required this.item, required this.childBloc});

  @override
  List<Object?> get props => [item, childBloc];
}

@CopyWith()
class RockBloc extends BaseitemBloc {
  final Rock item;
  final RoutesBloc childBloc;

  const RockBloc({required this.item, required this.childBloc});

  @override
  List<Object?> get props => [item, childBloc];
}

@CopyWith()
class RouteBloc extends BaseitemBloc {
  final Route item;

  const RouteBloc({required this.item});

  @override
  List<Object?> get props => [item];
}
