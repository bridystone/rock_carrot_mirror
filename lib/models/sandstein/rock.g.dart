// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rock _$_$_RockFromJson(Map<String, dynamic> json) {
  return _$_Rock(
    json['gipfel_ID'] as int,
    json['gipfelnr'] as String,
    json['gipfelname_d'] as String,
    json['gipfelname_cz'] as String,
    json['status'] as String,
    json['typ'] as String,
    json['vgrd'] as String,
    json['ngrd'] as String,
    json['posfehler'] as String,
    json['schartenhoehe'] as String,
    json['talhoehe'] as String,
    json['sektorid'] as int,
    json['wege_count'] as int,
    json['komment_count'] as int,
  );
}

Map<String, dynamic> _$_$_RockToJson(_$_Rock instance) => <String, dynamic>{
      'gipfel_ID': instance.gipfelId,
      'gipfelnr': instance.gipfelNr,
      'gipfelname_d': instance.gipfelName,
      'gipfelname_cz': instance.gipfelNameCZ,
      'status': instance.gipfelStatus,
      'typ': instance.gipfelTyp,
      'vgrd': instance.vgrd,
      'ngrd': instance.ngrd,
      'posfehler': instance.posfehler,
      'schartenhoehe': instance.schartenhoehe,
      'talhoehe': instance.talhoehe,
      'sektorid': instance.sektorid,
      'wege_count': instance.childCount,
      'komment_count': instance.commentCount,
    };
