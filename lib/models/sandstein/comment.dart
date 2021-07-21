import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

part 'comment.g.dart';

enum CommentSource {
  Sandstein,
  Teufelsturm,
}

enum CommentType {
  Area,
  Subarea,
  Rock,
  Route,
}

@JsonSerializable(createToJson: false)
// TODO: Constructor filled with ids to decide, what kind of komment it is
// to transform to correct qualityIcon
// https://github.com/google/json_serializable.dart/issues/292
class Comment extends Baseitem {
  // @JsonKey(name: 'komment_ID') int kommentId;
  @JsonKey(name: 'userid')
  final String user;
  @JsonKey(name: 'datum')
  final DateTime date;
  // @JsonKey(name: 'adatum') String adatum;
  // @JsonKey(name: 'wegid') int wegid;
  // @JsonKey(name: 'sektorid') int sektorid;
  // @JsonKey(name: 'gebietid') int gebietid;
  @CommentQualityConverter()
  @JsonKey(name: 'qual')
  final QualityIcons qualityIcons;
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  final IconData? safetyIcon;
  @RouteWetnessConverter()
  @JsonKey(name: 'nass')
  final IconData? wetnessIcon;
  @JsonKey(name: 'kommentar')
  final String comment;
  // @JsonKey(name: 'gipfelid') int gipfelid;
  @CommentDifficultyConverter()
  @JsonKey(name: 'schwer')
  final RouteDifficulty? difficulty;
  // @JsonKey(name: 'geklettert') String geklettert;
  // @JsonKey(name: 'begehung') String begehung;
  @CommentSourceConverter()
  @JsonKey(name: 'source')
  final CommentSource source;

  const Comment({
    required this.user,
    required this.date,
    required this.qualityIcons,
    this.safetyIcon,
    this.wetnessIcon,
    required this.comment,
    this.difficulty,
    required this.source,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@immutable
class QualityIcons {
  final IconData? routeIcon;
  final IconData? rockIcon;
  final IconData? subareaIcon;
  final IconData? areaIcon;
  const QualityIcons({
    this.routeIcon,
    this.rockIcon,
    this.subareaIcon,
    this.areaIcon,
  });
}
