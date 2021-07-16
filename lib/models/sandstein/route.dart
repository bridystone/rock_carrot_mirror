import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';
import 'package:rock_carrot/models/route_difficulty.dart';

part 'route.freezed.dart';
part 'route.g.dart';

// TODO: do it via static method (DifficultySortConverter)
// possibly also doable with
// https://github.com/google/json_serializable.dart/issues/292

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
    @JsonKey(name: 'wegbeschr_d') String description,
    @JsonKey(name: 'wegbeschr_cz') String secondLanguageDescription,
    @JsonKey(name: 'kletterei') String climbingStyle,
    @JsonKey(name: 'wegname_d') String name,
    @JsonKey(name: 'wegname_cz') String secondLanguageName,
    @IntConverter() @JsonKey(name: 'wegstatus') int? state,
    @DoubleConverter() @JsonKey(name: 'wegnr') double? nr,
    @JsonKey(name: 'comment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  // ensure that empty 1st names work correctly, by defining overriding getters
  // i.e. in China
  String getName() => name.isEmpty ? secondLanguageName : name;
  String getSecondLanguageName() => name.isEmpty ? '' : secondLanguageName;

  // TODO: getter/setter won't work :( -> issue?!?!
  // issue: https://github.com/rrousselGit/freezed/issues/136 ?!?
  @override
  @Deprecated('not working - use getName()')
  String get name => super.name.isEmpty ? super.secondLanguageName : super.name;
  @override
  @Deprecated('not working - use getSecondLanguageName()')
  String get secondLanguageName =>
      super.name.isEmpty ? '' : super.secondLanguageName;

  // ensure that empty 1st names work correctly, by defining overriding getters
  // i.e. in China
  String getDescription() =>
      description.isEmpty ? secondLanguageDescription : description;
  String getSecondLanguageDescription() =>
      description.isEmpty ? '' : secondLanguageDescription;

  // TODO: getter/setter won't work :( -> issue?!?!
  // issue: https://github.com/rrousselGit/freezed/issues/136 ?!?
  @override
  @Deprecated('not working - use getDescription()')
  String get description => super.description.isEmpty
      ? super.secondLanguageDescription
      : super.description;
  @override
  @Deprecated('not working - use getSecondLanguageDescription()')
  String get secondLanguageDescription =>
      super.description.isEmpty ? '' : super.secondLanguageDescription;
}
