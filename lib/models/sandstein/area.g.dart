// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Area _$_$_AreaFromJson(Map<String, dynamic> json) {
  return _$_Area(
    json['gebiet_ID'] as int,
    json['gebiet'] as String,
    json['komment_count'] as int,
    DateTime.parse(json['insert_timestamp'] as String),
  );
}

Map<String, dynamic> _$_$_AreaToJson(_$_Area instance) => <String, dynamic>{
      'gebiet_ID': instance.id,
      'gebiet': instance.name,
      'komment_count': instance.commentCount,
      'insert_timestamp': instance.lastUpdated.toIso8601String(),
    };
