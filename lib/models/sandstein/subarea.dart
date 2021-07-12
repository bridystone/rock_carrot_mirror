import 'package:freezed_annotation/freezed_annotation.dart';

part 'subarea.freezed.dart';
part 'subarea.g.dart';

@freezed
class Subarea with _$Subarea {
  factory Subarea(
    @JsonKey(name: 'sektor_ID') int sektorid,
    @JsonKey(name: 'gebietid') int gebietid,
    @JsonKey(name: 'sektornr') String sektornr,
    @JsonKey(name: 'sektorname_d') String sektornameD,
    @JsonKey(name: 'sektorname_cz') String sektornameCZ,
    @JsonKey(name: 'gipfel_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Subarea;

  factory Subarea.fromJson(Map<String, dynamic> json) =>
      _$SubareaFromJson(json);
}
