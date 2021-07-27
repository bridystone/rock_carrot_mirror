// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persistence _$PersistenceFromJson(Map<String, dynamic> json) {
  return Persistence(
    (json['pinnedCountries'] as List<dynamic>).map((e) => e as String).toList(),
    (json['pinnedAreas'] as List<dynamic>).map((e) => e as int).toList(),
    (json['pinnedSubareas'] as List<dynamic>).map((e) => e as int).toList(),
    (json['pinnedRocks'] as List<dynamic>).map((e) => e as int).toList(),
    (json['pinnedRoutes'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$PersistenceToJson(Persistence instance) =>
    <String, dynamic>{
      'pinnedCountries': instance.pinnedCountries,
      'pinnedAreas': instance.pinnedAreas,
      'pinnedSubareas': instance.pinnedSubareas,
      'pinnedRocks': instance.pinnedRocks,
      'pinnedRoutes': instance.pinnedRoutes,
    };
