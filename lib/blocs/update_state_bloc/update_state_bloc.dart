import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/sandstein_sql.dart';

part 'update_state_event.dart';
part 'update_state_state.dart';
part 'update_state_bloc.freezed.dart';

class UpdateStateBloc extends Bloc<UpdateStateEvent, UpdateStateState> {
  UpdateStateBloc() : super(_Idle()) {
    on<_UpdateCountries>(_onUpdateCountries);
    on<_UpdateAreas>(_onUpdateAreas);
  }

  void _onUpdateCountries(
    _UpdateCountries event,
    Emit<UpdateStateState> emit_dummy,
  ) async {
    try {
      emit(UpdateStateState.updating('countries', 0));
      final result = await Sandstein().updateCountries();
      emit(UpdateStateState.updating('countries', 100));
      emit(UpdateStateState.finished(result));
    } catch (e) {
      emit(UpdateStateState.failure(e));
    } finally {
      emit(UpdateStateState.idle());
    }
  }

  void _onUpdateAreas(
    _UpdateAreas event,
    Emit<UpdateStateState> emit_dummy,
  ) {}
}
