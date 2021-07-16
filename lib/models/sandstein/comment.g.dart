// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$_$_CommentFromJson(Map<String, dynamic> json) {
  return _$_Comment(
    json['userid'] as String,
    DateTime.parse(json['datum'] as String),
    const IntConverter().fromJson(json['qual'] as String),
    const RouteSafetyConverter().fromJson(json['sicher'] as String?),
    const RouteWetnessConverter().fromJson(json['nass'] as String?),
    json['kommentar'] as String,
    json['schwer'] as String?,
    const CommentSourceConverter().fromJson(json['source'] as String?),
  );
}

Map<String, dynamic> _$_$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'userid': instance.user,
      'datum': instance.date.toIso8601String(),
      'qual': const IntConverter().toJson(instance.quality),
      'sicher': const RouteSafetyConverter().toJson(instance.safetyIcon),
      'nass': const RouteWetnessConverter().toJson(instance.wetnessIcon),
      'kommentar': instance.comment,
      'schwer': instance.difficulty,
      'source': const CommentSourceConverter().toJson(instance.source),
    };
