// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateState _$_$_UpdateStateFromJson(Map<String, dynamic> json) {
  return _$_UpdateState(
    _$enumDecode(_$UpdateTypeEnumMap, json['type']),
    json['id'] as String,
    const EpochConverter().fromJson(json['timestamp'] as int?),
    const EpochConverter().fromJson(json['timestampTT'] as int?),
  );
}

Map<String, dynamic> _$_$_UpdateStateToJson(_$_UpdateState instance) =>
    <String, dynamic>{
      'type': _$UpdateTypeEnumMap[instance.type],
      'id': instance.id,
      'timestamp': const EpochConverter().toJson(instance.timestamp),
      'timestampTT': const EpochConverter().toJson(instance.timestampTT),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$UpdateTypeEnumMap = {
  UpdateType.country: 'country',
  UpdateType.area: 'area',
  UpdateType.subarea: 'subarea',
  UpdateType.rock: 'rock',
};
