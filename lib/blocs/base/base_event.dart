part of 'base_bloc.dart';

abstract class BaseEvent extends Equatable {
  const BaseEvent();

  @override
  List<Object> get props => [];
}

class BaseEventRequestData extends BaseEvent {
  final Baseitem? baseitem;
  const BaseEventRequestData([this.baseitem]);

  @override
  List<Object> get props => [baseitem ?? Baseitem()];
}

class BaseEventUpdateData extends BaseEvent {
  final Baseitem? baseitem;
  const BaseEventUpdateData([this.baseitem]);

  @override
  List<Object> get props => [baseitem ?? Baseitem()];
}

class BaseEventUpdateDataIntensive extends BaseEvent {
  final Baseitem? baseitem;
  const BaseEventUpdateDataIntensive([this.baseitem]);

  @override
  List<Object> get props => [baseitem ?? Baseitem()];
}

class BaseEventInvalidateData extends BaseEvent {}
