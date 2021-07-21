import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

part 'country.g.dart';

@JsonSerializable(createToJson: false)
class Country extends Baseitem {
  @JsonKey(name: 'land')
  final String name;
//    @JsonKey(name: 'ISO3166') String iso3166,
//    @JsonKey(name: 'KFZ') String kfz,
//    @JsonKey(name: 'count') int childCount,
//    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,

  Country({
    required this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
