import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

part 'base_event.dart';
part 'base_state.dart';

abstract class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(BaseStateInitial()) {
    // request data from DB
    on<BaseEventRequestData>(_onRequestData);
    // refresh data from Web
    on<BaseEventUpdateData>(_onUpdateData);
    // update all data or get from TT
    on<BaseEventUpdateDataIntensive>(_onUpdateDataIntensive);
    // invalidate current data set
    on<BaseEventInvalidateData>((event, emit) => emit(BaseStateInitial()));
  }

  void _onRequestData(
    BaseEventRequestData event,
    Emit<BaseState> emit,
  ) async {
    try {
      emit(BaseStateInProgress());
      final items = await requestData(event.baseitem);
      emit(BaseStateDataReceived(baseitem: event.baseitem, items: items));
    } catch (exception) {
      emit(BaseStateFailure(exception));
      emit(BaseStateDataReceived(baseitem: event.baseitem!, items: []));
    }
  }

  void _onUpdateData(
    BaseEventUpdateData event,
    Emit<BaseState> emit,
  ) async {
    try {
      emit(BaseStateUpdateInProgress(event.runtimeType.toString(), 0));
      final result = await updateData(event.baseitem);
      emit(BaseStateUpdateInProgress(event.runtimeType.toString(), 100));
      emit(BaseStateUpdateFinished(result));
    } catch (exception) {
      emit(BaseStateFailure(exception));
    } finally {
      add(BaseEventRequestData(event.baseitem));
    }
  }

  void _onUpdateDataIntensive(
    BaseEventUpdateDataIntensive event,
    Emit<BaseState> emit,
  ) async {
    // TODO: inform user that action is already in progress
    if (!(state is BaseStateDataReceived)) {
      print('already in progress');
      return;
    }
    try {
      emit(BaseStateUpdateInProgress(event.runtimeType.toString(), 0));
      final result = await updateDataIntensive(event.baseitem!);
      emit(BaseStateUpdateInProgress(event.runtimeType.toString(), 100));
      emit(BaseStateUpdateFinished(result));
    } catch (exception) {
      emit(BaseStateFailure(exception));
    } finally {
      add(BaseEventRequestData(event.baseitem));
    }
  }

  /// request data from the database
  Future<List<Baseitem>> requestData(Baseitem? baseitem);

  /// refresh data from the web
  Future<int> updateData(Baseitem? baseitem);

  /// refresh data from the web inkl subitems or TT
  Future<int> updateDataIntensive(Baseitem baseitem);

  /// return state for filitered Bloc
  bool get isLoading => state is! BaseStateDataReceived;

  /// return state for filitered Bloc
  bool get isLoaded => state is BaseStateDataReceived;

  /// return countries for FilteredBloc
  List<Baseitem> get items => (state is BaseStateDataReceived)
      ? (state as BaseStateDataReceived).items
      : [];

  Baseitem? get getBaseitemOrNull => (state is BaseStateDataReceived)
      ? (state as BaseStateDataReceived).baseitem
      : null;
}
