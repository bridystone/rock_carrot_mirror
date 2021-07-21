import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

part 'route.g.dart';

// TODO: Wegstatus ==> converter - Projekt etc
@JsonSerializable(createToJson: false)
class Route extends Baseitem {
  @JsonKey(name: 'weg_ID')
  final int id;
  // @JsonKey(name: 'gipfelid') int gipfelId;
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwierigkeit')
  final RouteDifficulty difficulty;
  @JsonKey(name: 'erstbegvorstieg')
  final String firstAscentLead;
  @JsonKey(name: 'erstbegnachstieg')
  final String firstAscentPartners;
  @JsonKey(name: 'erstbegdatum')
  final DateTime? firstAscentDate;
  @IntConverter()
  @JsonKey(name: 'ringzahl')
  final int? rings;
  @JsonKey(name: 'wegbeschr_d')
  final String description_internal;
  @JsonKey(name: 'wegbeschr_cz')
  final String secondLanguageDescription_internal;
  @JsonKey(name: 'kletterei')
  final String climbingStyle;
  @JsonKey(name: 'wegname_d')
  @internal
  final String name_internal;
  @JsonKey(name: 'wegname_cz')
  @internal
  final String secondLanguageName_internal;
  @IntConverter()
  @JsonKey(name: 'wegstatus')
  final int? state;
  @DoubleConverter()
  @JsonKey(name: 'wegnr')
  final double? nr;
  @JsonKey(name: 'comment_count')
  final int commentCount;
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  const Route({
    required this.id,
    required this.difficulty,
    required this.firstAscentLead,
    required this.firstAscentPartners,
    this.firstAscentDate,
    this.rings,
    required this.description_internal,
    required this.secondLanguageDescription_internal,
    required this.climbingStyle,
    required this.name_internal,
    required this.secondLanguageName_internal,
    this.state,
    this.nr,
    required this.commentCount,
    required this.lastUpdated,
  });

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  // ensure that empty 1st names work correctly, by defining overriding getters
  // i.e. in China
  // some names do not even have both (i.e. http://db-sandsteinklettern.gipfelbuch.de/weg.php?gipfelid=17766)
  // TODO: monitor private field usage
  // https://github.com/rrousselGit/freezed/issues/298
  // overridded members do not seem to work
  String get name => name_internal.isNotEmpty
      ? name_internal
      : secondLanguageName_internal.isNotEmpty
          ? secondLanguageName_internal
          : '[unknown name]';
  // remove 2nd Language for 2ndLanguage, if already transfered to name
  String get secondLanguageName =>
      name_internal.isEmpty ? '' : secondLanguageName_internal;

  String get description => description_internal.isNotEmpty
      ? description_internal
      : secondLanguageDescription_internal.isNotEmpty
          ? secondLanguageDescription_internal
          : '[unknown description]';
  // remove 2nd Language for 2ndLanguage, if already transfered to description
  String get secondLanguageDescription =>
      description_internal.isEmpty ? '' : secondLanguageDescription_internal;
}

const difficultymap = {
  1: 'I',
  2: 'II',
  3: 'III',
  4: 'IV',
  5: 'V',
  6: 'VI',
  7: 'VIIa',
  8: 'VIIb',
  9: 'VIIc',
  10: 'VIIIa',
  11: 'VIIIb',
  12: 'VIIIc',
  13: 'IXa',
  14: 'IXb',
  15: 'IXc',
  16: 'Xa',
  17: 'Xb',
  18: 'Xc',
  19: 'XIa',
  20: 'XIb',
  21: 'XIc',
  22: 'XIIa',
  23: 'XIIb',
  24: 'XIIc',
  25: 'XIIIa',
  26: 'XIIIb',
  27: 'XIIIc',
};

@immutable
class RouteDifficulty {
  final int sortableDifficulty;
  final String? DifficultyFull;
  final String? Difficulty;
  const RouteDifficulty({
    required this.sortableDifficulty,
    this.DifficultyFull,
    this.Difficulty,
  });
}
