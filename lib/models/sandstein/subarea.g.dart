// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subarea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subarea _$_$_SubareaFromJson(Map<String, dynamic> json) {
  return _$_Subarea(
    json['sektor_ID'] as int,
    const DoubleConverter().fromJson(json['sektornr'] as String),
    json['sektorname_d'] as String,
    json['sektorname_cz'] as String,
    json['komment_count'] as int,
    DateTime.parse(json['insert_timestamp'] as String),
  );
}

Map<String, dynamic> _$_$_SubareaToJson(_$_Subarea instance) =>
    <String, dynamic>{
      'sektor_ID': instance.id,
      'sektornr': const DoubleConverter().toJson(instance.nr),
      'sektorname_d': instance.name,
      'sektorname_cz': instance.secondLanguageName,
      'komment_count': instance.commentCount,
      'insert_timestamp': instance.lastUpdated.toIso8601String(),
    };
