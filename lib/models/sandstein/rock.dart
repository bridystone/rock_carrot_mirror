import 'package:freezed_annotation/freezed_annotation.dart';

part 'rock.freezed.dart';
part 'rock.g.dart';

@freezed
class Rock with _$Rock {
  factory Rock(
    @JsonKey(name: 'gipfel_ID') int gipfelId,
    @JsonKey(name: 'gipfelnr') String gipfelNr,
    @JsonKey(name: 'gipfelname_d') String gipfelName,
    @JsonKey(name: 'gipfelname_cz') String gipfelNameCZ,
    @JsonKey(name: 'status') String gipfelStatus,
    @JsonKey(name: 'typ') String gipfelTyp,
    @JsonKey(name: 'vgrd') String vgrd,
    @JsonKey(name: 'ngrd') String ngrd,
    @JsonKey(name: 'posfehler') String posfehler,
    @JsonKey(name: 'schartenhoehe') String schartenhoehe,
    @JsonKey(name: 'talhoehe') String talhoehe,
    @JsonKey(name: 'sektorid') int sektorid,
    @JsonKey(name: 'wege_count') int childCount,
    @JsonKey(name: 'komment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Rock;

  factory Rock.fromJson(Map<String, dynamic> json) => _$RockFromJson(json);
}
