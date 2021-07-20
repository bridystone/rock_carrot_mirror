import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';

part 'rock.freezed.dart';
part 'rock.g.dart';

enum RockType {
  Gipfel,
  Massiv,
  Block,
  Steinbruch,
  AlpinerGipfel,
  NichtAnerkannt,
  Hoehle,
  Parkplatz,
  Gaststaette,
  Camping,
  Aussicht,
  Berg,
  Bergungsbox,
  Huette,
  Misc,
}

enum RockState {
  NotRestricted,
  PartlyRestricted,
  TimelyRestricted,
  FullyRestricted,
  Demolished,
}

@freezed
class Rock with _$Rock {
  Rock._();

  factory Rock(
    @JsonKey(name: 'gipfel_ID') int id,
    @DoubleConverter() @JsonKey(name: 'gipfelnr') double? nr,
    @JsonKey(name: 'gipfelname_d') String name_internal,
    @JsonKey(name: 'gipfelname_cz') String secondLanguageName_internal,
    @RockStateConverter() @JsonKey(name: 'status') RockState state,
    @RockTypeConverter() @JsonKey(name: 'typ') RockType type,
    @DoubleConverter() @JsonKey(name: 'vgrd') double? longitude,
    @DoubleConverter() @JsonKey(name: 'ngrd') double? latitude,
    // @JsonKey(name: 'posfehler') int posfehler,
    @IntConverter() @JsonKey(name: 'schartenhoehe') int? upperHeight,
    @IntConverter() @JsonKey(name: 'talhoehe') int? lowerHeight,
    //@JsonKey(name: 'sektorid') int sektorid,
    //@JsonKey(name: 'wege_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
    @JsonKey(name: 'tt_insert_timestamp') DateTime? lastUpdatedTT,
  ) = _Rock;

  factory Rock.fromJson(Map<String, dynamic> json) => _$RockFromJson(json);

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
}
