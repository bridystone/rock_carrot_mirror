// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Area _$_$_AreaFromJson(Map<String, dynamic> json) {
  return _$_Area(
    json['gebiet_ID'] as int,
    json['gebiet'] as String,
    json['land'] as String,
    json['sprache2'] as String,
    json['gdefaultanzeige'] as String,
    json['schwskala'] as String,
    json['subarea_count'] as int,
    json['komment_count'] as int,
  );
}

Map<String, dynamic> _$_$_AreaToJson(_$_Area instance) => <String, dynamic>{
      'gebiet_ID': instance.gebietid,
      'gebiet': instance.gebiet,
      'land': instance.land,
      'sprache2': instance.sprache2,
      'gdefaultanzeige': instance.gdefaultanzeige,
      'schwskala': instance.schwskala,
      'subarea_count': instance.childCount,
      'komment_count': instance.commentCount,
    };
