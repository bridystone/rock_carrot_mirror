import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/models/sandstein/json_converters.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

// TODO: TEST SQL Convert!

@freezed
class Comment with _$Comment {
  factory Comment(
    int kommentId,
    String userid,
    String datum,
    String adatum,
    int wegid,
    int sektorid,
    int gebietid,
    String qual,
    @RouteSafetyConverter() @JsonKey(name: 'sicher') String safetyRouteIcon,
    String nass,
    String kommentar,
    int gipfelid,
    String schwer,
    String geklettert,
    String begehung,
    String source,
  ) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
