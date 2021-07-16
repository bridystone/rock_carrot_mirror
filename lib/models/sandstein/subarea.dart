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
    @JsonKey(name: 'sektorname_d') String name,
    @JsonKey(name: 'sektorname_cz') String secondLanguageName,
    // @JsonKey(name: 'gipfel_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Subarea;

  factory Subarea.fromJson(Map<String, dynamic> json) =>
      _$SubareaFromJson(json);

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
