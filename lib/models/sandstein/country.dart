import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  factory Country(
    @JsonKey(name: 'land') String name,
//    @JsonKey(name: 'ISO3166') String iso3166,
//    @JsonKey(name: 'KFZ') String kfz,
//    @JsonKey(name: 'count') int childCount,
//    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
