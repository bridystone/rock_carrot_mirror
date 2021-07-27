// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension RouteCopyWith on Route {
  Route copyWith({
    String? climbingStyle,
    int? commentCount,
    String? description_internal,
    RouteDifficulty? difficulty,
    DateTime? firstAscentDate,
    String? firstAscentLead,
    String? firstAscentPartners,
    int? id,
    bool? isPinned,
    DateTime? lastUpdated,
    String? name_internal,
    double? nr,
    int? rings,
    String? secondLanguageDescription_internal,
    String? secondLanguageName_internal,
    int? state,
  }) {
    return Route(
      climbingStyle: climbingStyle ?? this.climbingStyle,
      commentCount: commentCount ?? this.commentCount,
      description_internal: description_internal ?? this.description_internal,
      difficulty: difficulty ?? this.difficulty,
      firstAscentDate: firstAscentDate ?? this.firstAscentDate,
      firstAscentLead: firstAscentLead ?? this.firstAscentLead,
      firstAscentPartners: firstAscentPartners ?? this.firstAscentPartners,
      id: id ?? this.id,
      isPinned: isPinned ?? this.isPinned,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      name_internal: name_internal ?? this.name_internal,
      nr: nr ?? this.nr,
      rings: rings ?? this.rings,
      secondLanguageDescription_internal: secondLanguageDescription_internal ??
          this.secondLanguageDescription_internal,
      secondLanguageName_internal:
          secondLanguageName_internal ?? this.secondLanguageName_internal,
      state: state ?? this.state,
    );
  }
}

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
