import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:rock_carrot/models/areas.dart';
import 'package:rock_carrot/models/baseitems.dart';
import 'package:rock_carrot/models/countries.dart';
import 'package:rock_carrot/models/subareas.dart';
import 'package:rock_carrot/models/update_stati.dart';
import 'package:rock_carrot/models/update_status.dart';

part 'update_state.dart';

class UpdateCubit extends Cubit<UpdateState> {
  UpdateCubit() : super(UpdateInitial());

  /// initiate retrieval of data and emit new Value
  void callGetValueAsync(Baseitem baseItem) async {
    DateTime? timestamp;
    DateTime? timestampTT;
    UpdateType type;
    String id;
    if (baseItem is Country) {
      timestamp = (await UpdateStati.getInstance())
          .getTimeStamp(UpdateType.country, baseItem.name);
      type = UpdateType.country;
      id = baseItem.name;
    } else if (baseItem is Area) {
      timestamp = (await UpdateStati.getInstance())
          .getTimeStamp(UpdateType.area, baseItem.areaId.toString());
      type = UpdateType.area;
      id = baseItem.areaId.toString();
    } else if (baseItem is Subarea) {
      timestamp = (await UpdateStati.getInstance())
          .getTimeStamp(UpdateType.subarea, baseItem.subareaId.toString());
      type = UpdateType.subarea;
      id = baseItem.subareaId.toString();
      timestampTT = (await UpdateStati.getInstance())
          .getTimeStamp(UpdateType.teufelsturm, baseItem.subareaId.toString());
    } else {
      throw Exception('Not Impemented');
    }
    if (timestamp == null) {
      emit(UpdateNoData());
    } else {
      if (timestampTT != null) {
        emit(UpdateLoadedInclTT(
          UpdateStatus(type, id, timestamp),
          UpdateStatus(UpdateType.teufelsturm, id, timestamp),
        ));
      } else {
        emit(UpdateLoaded(UpdateStatus(type, id, timestamp)));
      }
    }
  }
}
