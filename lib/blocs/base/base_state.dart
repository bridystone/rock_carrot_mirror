part of 'base_bloc.dart';

@immutable
abstract class BaseState extends Equatable {
  const BaseState();

  @override
  List<Object> get props => [];
}

class BaseStateInitial extends BaseState {}

class BaseStateInProgress extends BaseState {}

class BaseStateDataReceived extends BaseState {
  final List<BaseitemBloc> blocedItems;
  final BaseitemBloc? baseitem;
  const BaseStateDataReceived({
    required this.baseitem,
    required this.blocedItems,
  });

  @override
  List<Object> get props => [blocedItems];
}

class BaseStateUpdateInProgress extends BaseState {
  final String step;
  final int percent;
  const BaseStateUpdateInProgress(this.step, this.percent);

  @override
  List<Object> get props => [step, percent];
}

class BaseStateUpdateFinished extends BaseState {
  final int result;
  const BaseStateUpdateFinished(this.result);

  @override
  List<Object> get props => [result];
}

class BaseStateFailure extends BaseState {
  final Exception exception;
  const BaseStateFailure(this.exception);

  @override
  List<Object> get props => [exception];
}
