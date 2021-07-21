// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rock _$RockFromJson(Map<String, dynamic> json) {
  return Rock(
    id: json['gipfel_ID'] as int,
    nr: const DoubleConverter().fromJson(json['gipfelnr'] as String?),
    name_internal: json['gipfelname_d'] as String,
    secondLanguageName_internal: json['gipfelname_cz'] as String,
    state: const RockStateConverter().fromJson(json['status'] as String?),
    type: const RockTypeConverter().fromJson(json['typ'] as String?),
    longitude: const DoubleConverter().fromJson(json['vgrd'] as String?),
    latitude: const DoubleConverter().fromJson(json['ngrd'] as String?),
    upperHeight:
        const IntConverter().fromJson(json['schartenhoehe'] as String?),
    lowerHeight: const IntConverter().fromJson(json['talhoehe'] as String?),
    commentCount: json['komment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
    lastUpdatedTT: json['tt_insert_timestamp'] == null
        ? null
        : DateTime.parse(json['tt_insert_timestamp'] as String),
  );
}
