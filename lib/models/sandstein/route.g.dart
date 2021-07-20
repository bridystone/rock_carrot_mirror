// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Route _$_$_RouteFromJson(Map<String, dynamic> json) {
  return _$_Route(
    json['weg_ID'] as int,
    const RouteDifficultyConverter().fromJson(json['schwierigkeit'] as String?),
    json['erstbegvorstieg'] as String,
    json['erstbegnachstieg'] as String,
    json['erstbegdatum'] == null
        ? null
        : DateTime.parse(json['erstbegdatum'] as String),
    const IntConverter().fromJson(json['ringzahl'] as String),
    json['wegbeschr_d'] as String,
    json['wegbeschr_cz'] as String,
    json['kletterei'] as String,
    json['wegname_d'] as String,
    json['wegname_cz'] as String,
    const IntConverter().fromJson(json['wegstatus'] as String),
    const DoubleConverter().fromJson(json['wegnr'] as String),
    json['comment_count'] as int,
    DateTime.parse(json['insert_timestamp'] as String),
  );
}

Map<String, dynamic> _$_$_RouteToJson(_$_Route instance) => <String, dynamic>{
      'weg_ID': instance.id,
      'schwierigkeit':
          const RouteDifficultyConverter().toJson(instance.difficulty),
      'erstbegvorstieg': instance.firstAscentLead,
      'erstbegnachstieg': instance.firstAscentPartners,
      'erstbegdatum': instance.firstAscentDate?.toIso8601String(),
      'ringzahl': const IntConverter().toJson(instance.rings),
      'wegbeschr_d': instance.description_internal,
      'wegbeschr_cz': instance.secondLanguageDescription_internal,
      'kletterei': instance.climbingStyle,
      'wegname_d': instance.name_internal,
      'wegname_cz': instance.secondLanguageName_internal,
      'wegstatus': const IntConverter().toJson(instance.state),
      'wegnr': const DoubleConverter().toJson(instance.nr),
      'comment_count': instance.commentCount,
      'insert_timestamp': instance.lastUpdated.toIso8601String(),
    };
