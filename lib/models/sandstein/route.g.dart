// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) {
  return Route(
    id: json['weg_ID'] as int,
    difficulty: const RouteDifficultyConverter()
        .fromJson(json['schwierigkeit'] as String?),
    firstAscentLead: json['erstbegvorstieg'] as String,
    firstAscentPartners: json['erstbegnachstieg'] as String,
    firstAscentDate: json['erstbegdatum'] == null
        ? null
        : DateTime.parse(json['erstbegdatum'] as String),
    rings: const IntConverter().fromJson(json['ringzahl'] as String?),
    description_internal: json['wegbeschr_d'] as String,
    secondLanguageDescription_internal: json['wegbeschr_cz'] as String,
    climbingStyle: json['kletterei'] as String,
    name_internal: json['wegname_d'] as String,
    secondLanguageName_internal: json['wegname_cz'] as String,
    state: const IntConverter().fromJson(json['wegstatus'] as String?),
    nr: const DoubleConverter().fromJson(json['wegnr'] as String?),
    commentCount: json['comment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
  );
}
