// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rock _$_$_RockFromJson(Map<String, dynamic> json) {
  return _$_Rock(
    json['gipfel_ID'] as int,
    const DoubleConverter().fromJson(json['gipfelnr'] as String),
    json['gipfelname_d'] as String,
    json['gipfelname_cz'] as String,
    const RockStateConverter().fromJson(json['status'] as String),
    const RockTypeConverter().fromJson(json['typ'] as String),
    const DoubleConverter().fromJson(json['vgrd'] as String),
    const DoubleConverter().fromJson(json['ngrd'] as String),
    const IntConverter().fromJson(json['schartenhoehe'] as String),
    const IntConverter().fromJson(json['talhoehe'] as String),
    json['komment_count'] as int,
    DateTime.parse(json['insert_timestamp'] as String),
  );
}

Map<String, dynamic> _$_$_RockToJson(_$_Rock instance) => <String, dynamic>{
      'gipfel_ID': instance.id,
      'gipfelnr': const DoubleConverter().toJson(instance.nr),
      'gipfelname_d': instance.name,
      'gipfelname_cz': instance.secondLanguageName,
      'status': const RockStateConverter().toJson(instance.state),
      'typ': const RockTypeConverter().toJson(instance.type),
      'vgrd': const DoubleConverter().toJson(instance.vgrd),
      'ngrd': const DoubleConverter().toJson(instance.ngrd),
      'schartenhoehe': const IntConverter().toJson(instance.upperHeight),
      'talhoehe': const IntConverter().toJson(instance.lowerHeight),
      'komment_count': instance.commentCount,
      'insert_timestamp': instance.lastUpdated.toIso8601String(),
    };
