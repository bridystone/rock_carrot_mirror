import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';

part 'subarea.freezed.dart';
part 'subarea.g.dart';

// TODO: Double converter should work out of the box
// issue at Freezed?
// @JsonKey(name: 'sektornr') double? nr,

@freezed
class Subarea with _$Subarea {
  Subarea._();

  factory Subarea(
    @JsonKey(name: 'sektor_ID') int id,
    // @JsonKey(name: 'gebietid') int gebietid,
    @DoubleConverter() @JsonKey(name: 'sektornr') double? nr,
    @JsonKey(name: 'sektorname_d') String name_internal,
    @JsonKey(name: 'sektorname_cz') String secondLanguageName_internal,
    // @JsonKey(name: 'gipfel_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Subarea;

  factory Subarea.fromJson(Map<String, dynamic> json) =>
      _$SubareaFromJson(json);

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
