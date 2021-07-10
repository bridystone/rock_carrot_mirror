import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_rocks.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/subarea.dart';

part 'rocks_event.dart';
part 'rocks_state.dart';
part 'rocks_bloc.freezed.dart';

class RocksBloc extends Bloc<RocksEvent, RocksState> {
  RocksBloc() : super(_Initial()) {
    on<_RequestRocks>(_onRequestRocks);
    on<_InvalidateRocks>((event, emit_dummy) => emit(RocksState.initial()));
  }

  void _onRequestRocks(
    _RequestRocks event,
    Emit<RocksState> emit_dummy,
  ) async {
    try {
      emit(RocksState.inProgress());
      final sqlResults = await SqlHandler().queryRocks(event.subarea.sektorid);
      final rocks = sqlResults.map((sqlRow) => Rock.fromJson(sqlRow)).toList();

      emit(RocksState.rocksReceived(event.subarea, rocks));
    } catch (e) {
      emit(RocksState.failure());
      emit(RocksState.rocksReceived(event.subarea, []));
    }
  }
}
