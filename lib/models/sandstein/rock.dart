import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

import 'package:rock_carrot/models/json_converters.dart';

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

@JsonSerializable(createToJson: false)
@CopyWith()
class Rock extends Baseitem {
  @JsonKey(name: 'gipfel_ID')
  final int id;
  @DoubleConverter()
  @JsonKey(name: 'gipfelnr')
  final double? nr;
  @JsonKey(name: 'gipfelname_d')
  final String name_internal;
  @JsonKey(name: 'gipfelname_cz')
  final String secondLanguageName_internal;
  @RockStateConverter()
  @JsonKey(name: 'status')
  final RockState state;
  @RockTypeConverter()
  @JsonKey(name: 'typ')
  final RockType type;
  @DoubleConverter()
  @JsonKey(name: 'vgrd')
  final double? longitude;
  @DoubleConverter()
  @JsonKey(name: 'ngrd')
  final double? latitude;
  // @JsonKey(name: 'posfehler') int posfehler;
  @IntConverter()
  @JsonKey(name: 'schartenhoehe')
  final int? upperHeight;
  @IntConverter()
  @JsonKey(name: 'talhoehe')
  final int? lowerHeight;
  //@JsonKey(name: 'sektorid') int sektorid;
  //@JsonKey(name: 'wege_count') int childCount;
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;
  @JsonKey(name: 'tt_insert_timestamp')
  final DateTime? lastUpdatedTT;

  const Rock({
    required this.id,
    this.nr,
    required this.name_internal,
    required this.secondLanguageName_internal,
    required this.state,
    required this.type,
    this.longitude,
    this.latitude,
    this.upperHeight,
    this.lowerHeight,
    required this.commentCount,
    required this.lastUpdated,
    this.lastUpdatedTT,
    bool isPinned = false,
  }) : super(isPinned: isPinned);

  factory Rock.fromJson(Map<String, dynamic> json) => _$RockFromJson(json);

  @override
  List<Object?> get props => [
        id,
        nr,
        name_internal,
        secondLanguageName_internal,
        state,
        type,
        longitude,
        latitude,
        upperHeight,
        lowerHeight,
        commentCount,
        lastUpdated,
        lastUpdatedTT,
        isPinned,
      ];

  // ensure that empty 1st names work correctly, by defining overriding getters
  // i.e. in China
  // some names do not even have both (i.e. http://db-sandsteinklettern.gipfelbuch.de/weg.php?gipfelid=17766)
  // TODO: monitor private field usage
  // https://github.com/rrousselGit/freezed/issues/298
  // TODO: is this a problem of Freezed-only or Json Serializable
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
