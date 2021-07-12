import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/update_state/epoch_converter.dart';

part 'update_state.freezed.dart';
part 'update_state.g.dart';

enum UpdateType {
  country,
  area,
  subarea,
  rock,
}

// TODO: check if this is working => @TimestampConverter()

@freezed
class UpdateState with _$UpdateState {
  factory UpdateState(
    UpdateType type,
    String id,
    @EpochConverter() DateTime timestamp,
    @EpochConverter() DateTime timestampTT,
  ) = _UpdateState;

  factory UpdateState.fromJson(Map<String, dynamic> json) =>
      _$UpdateStateFromJson(json);
}
