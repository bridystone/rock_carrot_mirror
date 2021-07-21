import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

part 'area.g.dart';

@JsonSerializable(createToJson: false)
class Area extends Baseitem {
  @JsonKey(name: 'gebiet_ID')
  final int id;
  @JsonKey(name: 'gebiet')
  final String name;
  //@JsonKey(name: 'land') String land,
  //@JsonKey(name: 'sprache2') String sprache2,
  //@JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
  //@JsonKey(name: 'schwskala') String schwskala,
  //@JsonKey(name: 'subarea_count') int childCount,
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  const Area({
    required this.id,
    required this.name,
    required this.commentCount,
    required this.lastUpdated,
  });

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
