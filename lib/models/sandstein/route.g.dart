// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Route _$_$_RouteFromJson(Map<String, dynamic> json) {
  return _$_Route(
    json['weg_ID'] as int,
    json['gipfelid'] as int,
    json['schwierigkeit'] as String,
    json['erstbegvorstieg'] as String,
    json['erstbegnachstieg'] as String,
    json['erstbegdatum'] as String,
    json['ringzahl'] as String,
    json['wegbeschr_d'] as String,
    json['wegbeschr_cz'] as String,
    json['kletterei'] as String,
    json['wegname_d'] as String,
    json['wegname_cz'] as String,
    json['wegstatus'] as String,
    json['wegnr'] as String,
    json['comment_count'] as int,
    DateTime.parse(json['insert_timestamp'] as String),
  );
}

Map<String, dynamic> _$_$_RouteToJson(_$_Route instance) => <String, dynamic>{
      'weg_ID': instance.wegId,
      'gipfelid': instance.gipfelId,
      'schwierigkeit': instance.schwierigkeit,
      'erstbegvorstieg': instance.erstbegvorstieg,
      'erstbegnachstieg': instance.erstbegnachstieg,
      'erstbegdatum': instance.erstbegdatum,
      'ringzahl': instance.ringzahl,
      'wegbeschr_d': instance.wegbeschr,
      'wegbeschr_cz': instance.wegbeschrCZ,
      'kletterei': instance.kletterei,
      'wegname_d': instance.wegname,
      'wegname_cz': instance.wegnameCZ,
      'wegstatus': instance.wegstatus,
      'wegnr': instance.wegnr,
      'comment_count': instance.commentCount,
      'insert_timestamp': instance.lastUpdated.toIso8601String(),
    };
