import 'package:json_annotation/json_annotation.dart';

part 'persistence.g.dart';

@JsonSerializable()
class Persistence {
  List<String> pinnedCountries;
  List<int> pinnedAreas;
  List<int> pinnedSubareas;
  List<int> pinnedRocks;
  List<int> pinnedRoutes;

  Persistence(
    this.pinnedCountries,
    this.pinnedAreas,
    this.pinnedSubareas,
    this.pinnedRocks,
    this.pinnedRoutes,
  );
  factory Persistence.fromJson(Map<String, dynamic> json) =>
      _$PersistenceFromJson(json);

  Map<String, dynamic> toJson() => _$PersistenceToJson(this);
}
