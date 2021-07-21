// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subarea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subarea _$SubareaFromJson(Map<String, dynamic> json) {
  return Subarea(
    id: json['sektor_ID'] as int,
    nr: const DoubleConverter().fromJson(json['sektornr'] as String?),
    name_internal: json['sektorname_d'] as String,
    secondLanguageName_internal: json['sektorname_cz'] as String,
    commentCount: json['komment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
  );
}
