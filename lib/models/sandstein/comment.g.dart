// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$_$_CommentFromJson(Map<String, dynamic> json) {
  return _$_Comment(
    json['kommentId'] as int,
    json['userid'] as String,
    json['datum'] as String,
    json['adatum'] as String,
    json['wegid'] as int,
    json['sektorid'] as int,
    json['gebietid'] as int,
    json['qual'] as String,
    json['sicher'] as String,
    json['nass'] as String,
    json['kommentar'] as String,
    json['gipfelid'] as int,
    json['schwer'] as String,
    json['geklettert'] as String,
    json['begehung'] as String,
    json['source'] as String,
  );
}

Map<String, dynamic> _$_$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'kommentId': instance.kommentId,
      'userid': instance.userid,
      'datum': instance.datum,
      'adatum': instance.adatum,
      'wegid': instance.wegid,
      'sektorid': instance.sektorid,
      'gebietid': instance.gebietid,
      'qual': instance.qual,
      'sicher': instance.safetyRouteIcon,
      'nass': instance.nass,
      'kommentar': instance.kommentar,
      'gipfelid': instance.gipfelid,
      'schwer': instance.schwer,
      'geklettert': instance.geklettert,
      'begehung': instance.begehung,
      'source': instance.source,
    };
