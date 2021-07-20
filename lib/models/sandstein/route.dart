import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';
import 'package:rock_carrot/models/route_difficulty.dart';

part 'route.freezed.dart';
part 'route.g.dart';

// TODO: Wegstatus ==> converter - Projekt etc
@freezed
class Route with _$Route {
  Route._();

  factory Route(
    @JsonKey(name: 'weg_ID') int id,
    // @JsonKey(name: 'gipfelid') int gipfelId,
    @RouteDifficultyConverter()
    @JsonKey(name: 'schwierigkeit')
        RouteDifficulty difficulty,
    @JsonKey(name: 'erstbegvorstieg') String firstAscentLead,
    @JsonKey(name: 'erstbegnachstieg') String firstAscentPartners,
    @JsonKey(name: 'erstbegdatum') DateTime? firstAscentDate,
    @IntConverter() @JsonKey(name: 'ringzahl') int? rings,
    @JsonKey(name: 'wegbeschr_d') String description_internal,
    @JsonKey(name: 'wegbeschr_cz') String secondLanguageDescription_internal,
    @JsonKey(name: 'kletterei') String climbingStyle,
    @JsonKey(name: 'wegname_d') String name_internal,
    @JsonKey(name: 'wegname_cz') String secondLanguageName_internal,
    @IntConverter() @JsonKey(name: 'wegstatus') int? state,
    @DoubleConverter() @JsonKey(name: 'wegnr') double? nr,
    @JsonKey(name: 'comment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Route;

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
