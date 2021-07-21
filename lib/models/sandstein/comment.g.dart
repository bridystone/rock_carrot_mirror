// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment(
    user: json['userid'] as String,
    date: DateTime.parse(json['datum'] as String),
    qualityIcons:
        const CommentQualityConverter().fromJson(json['qual'] as String?),
    safetyIcon:
        const RouteSafetyConverter().fromJson(json['sicher'] as String?),
    wetnessIcon:
        const RouteWetnessConverter().fromJson(json['nass'] as String?),
    comment: json['kommentar'] as String,
    difficulty:
        const CommentDifficultyConverter().fromJson(json['schwer'] as String?),
    source: const CommentSourceConverter().fromJson(json['source'] as String?),
  );
}
