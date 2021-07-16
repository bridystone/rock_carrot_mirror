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
    @JsonKey(name: 'gipfelname_d') String name,
    @JsonKey(name: 'gipfelname_cz') String secondLanguageName,
    @RockStateConverter() @JsonKey(name: 'status') RockState state,
    @RockTypeConverter() @JsonKey(name: 'typ') RockType type,
    @DoubleConverter() @JsonKey(name: 'vgrd') double? vgrd,
    @DoubleConverter() @JsonKey(name: 'ngrd') double? ngrd,
    // @JsonKey(name: 'posfehler') int posfehler,
    @IntConverter() @JsonKey(name: 'schartenhoehe') int? upperHeight,
    @IntConverter() @JsonKey(name: 'talhoehe') int? lowerHeight,
    //@JsonKey(name: 'sektorid') int sektorid,
    //@JsonKey(name: 'wege_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Rock;

  factory Rock.fromJson(Map<String, dynamic> json) => _$RockFromJson(json);

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
}
