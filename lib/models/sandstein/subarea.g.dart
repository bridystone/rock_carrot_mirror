// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subarea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subarea _$_$_SubareaFromJson(Map<String, dynamic> json) {
  return _$_Subarea(
    json['sektor_ID'] as int,
    json['gebietid'] as int,
    json['sektornr'] as String,
    json['sektorname_d'] as String,
    json['sektorname_cz'] as String,
    json['gipfel_count'] as int,
    json['komment_count'] as int,
  );
}

Map<String, dynamic> _$_$_SubareaToJson(_$_Subarea instance) =>
    <String, dynamic>{
      'sektor_ID': instance.sektorid,
      'gebietid': instance.gebietid,
      'sektornr': instance.sektornr,
      'sektorname_d': instance.sektornameD,
      'sektorname_cz': instance.sektornameCZ,
      'gipfel_count': instance.childCount,
      'komment_count': instance.commentCount,
    };
