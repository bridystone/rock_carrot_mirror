import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

part 'country.g.dart';

@JsonSerializable(createToJson: false)
@CopyWith()
class Country extends Baseitem {
  @JsonKey(name: 'land')
  final String name;
//    @JsonKey(name: 'ISO3166') String iso3166,
//    @JsonKey(name: 'KFZ') String kfz,
//    @JsonKey(name: 'count') int childCount,
//    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,

  Country({
    required this.name,
    bool isPinned = false,
  }) : super(isPinned: isPinned);

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  List<Object?> get props => [
        name,
        isPinned,
      ];
}
