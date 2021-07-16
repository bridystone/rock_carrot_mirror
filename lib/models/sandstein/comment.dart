import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/json_converters.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

enum CommentSource {
  Sandstein,
  Teufelsturm,
}

@freezed
// TODO: Constructor filled with ids to decide, what kind of komment it is
// to transform to correct qualityIcon
// https://github.com/google/json_serializable.dart/issues/292
class Comment with _$Comment {
  factory Comment(
    // @JsonKey(name: 'komment_ID') int kommentId,
    @JsonKey(name: 'userid') String user,
    @JsonKey(name: 'datum') DateTime date,
    // @JsonKey(name: 'adatum') String adatum,
    // @JsonKey(name: 'wegid') int wegid,
    // @JsonKey(name: 'sektorid') int sektorid,
    // @JsonKey(name: 'gebietid') int gebietid,
    @IntConverter() @JsonKey(name: 'qual') int? quality,
    @RouteSafetyConverter() @JsonKey(name: 'sicher') IconData? safetyIcon,
    @RouteWetnessConverter() @JsonKey(name: 'nass') IconData? wetnessIcon,
    @JsonKey(name: 'kommentar') String comment,
    // @JsonKey(name: 'gipfelid') int gipfelid,
    @RouteDifficultyConverter() @JsonKey(name: 'schwer') String? difficulty,
    // @JsonKey(name: 'geklettert') String geklettert,
    // @JsonKey(name: 'begehung') String begehung,
    @CommentSourceConverter() @JsonKey(name: 'source') CommentSource source,
  ) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
