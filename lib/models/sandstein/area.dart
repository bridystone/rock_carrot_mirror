import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area {
  factory Area(
    @JsonKey(name: 'gebiet_ID') int gebietid,
    @JsonKey(name: 'gebiet') String gebiet,
    @JsonKey(name: 'land') String land,
    @JsonKey(name: 'sprache2') String sprache2,
    @JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
    @JsonKey(name: 'schwskala') String schwskala,
    @JsonKey(name: 'subarea_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
