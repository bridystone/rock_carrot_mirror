import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  factory Route(
    @JsonKey(name: 'weg_ID') int wegId,
    @JsonKey(name: 'gipfelid') int gipfelId,
    @JsonKey(name: 'schwierigkeit') String schwierigkeit,
    @JsonKey(name: 'erstbegvorstieg') String erstbegvorstieg,
    @JsonKey(name: 'erstbegnachstieg') String erstbegnachstieg,
    @JsonKey(name: 'erstbegdatum') String erstbegdatum,
    @JsonKey(name: 'ringzahl') String ringzahl,
    @JsonKey(name: 'wegbeschr_d') String wegbeschr,
    @JsonKey(name: 'wegbeschr_cz') String wegbeschrCZ,
    @JsonKey(name: 'kletterei') String kletterei,
    @JsonKey(name: 'wegname_d') String wegname,
    @JsonKey(name: 'wegname_cz') String wegnameCZ,
    @JsonKey(name: 'wegstatus') String wegstatus,
    @JsonKey(name: 'wegnr') String wegnr,
    @JsonKey(name: 'comment_count') int commentCount,
    @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
  ) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
