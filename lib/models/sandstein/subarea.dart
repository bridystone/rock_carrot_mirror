import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

import 'package:rock_carrot/models/json_converters.dart';

part 'subarea.g.dart';

// TODO: Double converter should work out of the box
// issue at Freezed?
// @JsonKey(name: 'sektornr') double? nr,

@JsonSerializable(createToJson: false)
class Subarea extends Baseitem {
  @JsonKey(name: 'sektor_ID')
  final int id;
  // @JsonKey(name: 'gebietid') int gebietid,
  @DoubleConverter()
  @JsonKey(name: 'sektornr')
  final double? nr;
  @JsonKey(name: 'sektorname_d')
  final String name_internal;
  @JsonKey(name: 'sektorname_cz')
  final String secondLanguageName_internal;
  // @JsonKey(name: 'gipfel_count') int childCount,
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  const Subarea({
    required this.id,
    this.nr,
    required this.name_internal,
    required this.secondLanguageName_internal,
    required this.commentCount,
    required this.lastUpdated,
  });

  factory Subarea.fromJson(Map<String, dynamic> json) =>
      _$SubareaFromJson(json);

  // ensure that empty 1st names work correctly, by defining overriding getters
  // i.e. in China
  // some names do not even have both (i.e. http://db-sandsteinklettern.gipfelbuch.de/weg.php?gipfelid=17766)
  // TODO: monitor private field usage
  // TODO: is this a problem of Freezed-only or Json Serializable
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
