// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Area _$AreaFromJson(Map<String, dynamic> json) {
  return Area(
    id: json['gebiet_ID'] as int,
    name: json['gebiet'] as String,
    commentCount: json['komment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
  );
}
