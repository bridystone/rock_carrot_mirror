// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

  _Comment call(
      @JsonKey(name: 'userid') String user,
      @JsonKey(name: 'datum') DateTime date,
      @IntConverter() @JsonKey(name: 'qual') int? quality,
      @RouteSafetyConverter() @JsonKey(name: 'sicher') IconData? safetyIcon,
      @RouteWetnessConverter() @JsonKey(name: 'nass') IconData? wetnessIcon,
      @JsonKey(name: 'kommentar') String comment,
      @RouteDifficultyConverter() @JsonKey(name: 'schwer') String? difficulty,
      @CommentSourceConverter() @JsonKey(name: 'source') CommentSource source) {
    return _Comment(
      user,
      date,
      quality,
      safetyIcon,
      wetnessIcon,
      comment,
      difficulty,
      source,
    );
  }

  Comment fromJson(Map<String, Object> json) {
    return Comment.fromJson(json);
  }
}

/// @nodoc
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
// @JsonKey(name: 'komment_ID') int kommentId,
  @JsonKey(name: 'userid')
  String get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'datum')
  DateTime get date =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'adatum') String adatum,
// @JsonKey(name: 'wegid') int wegid,
// @JsonKey(name: 'sektorid') int sektorid,
// @JsonKey(name: 'gebietid') int gebietid,
  @IntConverter()
  @JsonKey(name: 'qual')
  int? get quality => throw _privateConstructorUsedError;
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  IconData? get safetyIcon => throw _privateConstructorUsedError;
  @RouteWetnessConverter()
  @JsonKey(name: 'nass')
  IconData? get wetnessIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'kommentar')
  String get comment =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'gipfelid') int gipfelid,
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwer')
  String? get difficulty =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'geklettert') String geklettert,
// @JsonKey(name: 'begehung') String begehung,
  @CommentSourceConverter()
  @JsonKey(name: 'source')
  CommentSource get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userid') String user,
      @JsonKey(name: 'datum') DateTime date,
      @IntConverter() @JsonKey(name: 'qual') int? quality,
      @RouteSafetyConverter() @JsonKey(name: 'sicher') IconData? safetyIcon,
      @RouteWetnessConverter() @JsonKey(name: 'nass') IconData? wetnessIcon,
      @JsonKey(name: 'kommentar') String comment,
      @RouteDifficultyConverter() @JsonKey(name: 'schwer') String? difficulty,
      @CommentSourceConverter() @JsonKey(name: 'source') CommentSource source});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? date = freezed,
    Object? quality = freezed,
    Object? safetyIcon = freezed,
    Object? wetnessIcon = freezed,
    Object? comment = freezed,
    Object? difficulty = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int?,
      safetyIcon: safetyIcon == freezed
          ? _value.safetyIcon
          : safetyIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      wetnessIcon: wetnessIcon == freezed
          ? _value.wetnessIcon
          : wetnessIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CommentSource,
    ));
  }
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userid') String user,
      @JsonKey(name: 'datum') DateTime date,
      @IntConverter() @JsonKey(name: 'qual') int? quality,
      @RouteSafetyConverter() @JsonKey(name: 'sicher') IconData? safetyIcon,
      @RouteWetnessConverter() @JsonKey(name: 'nass') IconData? wetnessIcon,
      @JsonKey(name: 'kommentar') String comment,
      @RouteDifficultyConverter() @JsonKey(name: 'schwer') String? difficulty,
      @CommentSourceConverter() @JsonKey(name: 'source') CommentSource source});
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
      : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

  @override
  $Res call({
    Object? user = freezed,
    Object? date = freezed,
    Object? quality = freezed,
    Object? safetyIcon = freezed,
    Object? wetnessIcon = freezed,
    Object? comment = freezed,
    Object? difficulty = freezed,
    Object? source = freezed,
  }) {
    return _then(_Comment(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int?,
      safetyIcon == freezed
          ? _value.safetyIcon
          : safetyIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      wetnessIcon == freezed
          ? _value.wetnessIcon
          : wetnessIcon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CommentSource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  _$_Comment(
      @JsonKey(name: 'userid') this.user,
      @JsonKey(name: 'datum') this.date,
      @IntConverter() @JsonKey(name: 'qual') this.quality,
      @RouteSafetyConverter() @JsonKey(name: 'sicher') this.safetyIcon,
      @RouteWetnessConverter() @JsonKey(name: 'nass') this.wetnessIcon,
      @JsonKey(name: 'kommentar') this.comment,
      @RouteDifficultyConverter() @JsonKey(name: 'schwer') this.difficulty,
      @CommentSourceConverter() @JsonKey(name: 'source') this.source);

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentFromJson(json);

  @override // @JsonKey(name: 'komment_ID') int kommentId,
  @JsonKey(name: 'userid')
  final String user;
  @override
  @JsonKey(name: 'datum')
  final DateTime date;
  @override // @JsonKey(name: 'adatum') String adatum,
// @JsonKey(name: 'wegid') int wegid,
// @JsonKey(name: 'sektorid') int sektorid,
// @JsonKey(name: 'gebietid') int gebietid,
  @IntConverter()
  @JsonKey(name: 'qual')
  final int? quality;
  @override
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  final IconData? safetyIcon;
  @override
  @RouteWetnessConverter()
  @JsonKey(name: 'nass')
  final IconData? wetnessIcon;
  @override
  @JsonKey(name: 'kommentar')
  final String comment;
  @override // @JsonKey(name: 'gipfelid') int gipfelid,
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwer')
  final String? difficulty;
  @override // @JsonKey(name: 'geklettert') String geklettert,
// @JsonKey(name: 'begehung') String begehung,
  @CommentSourceConverter()
  @JsonKey(name: 'source')
  final CommentSource source;

  @override
  String toString() {
    return 'Comment(user: $user, date: $date, quality: $quality, safetyIcon: $safetyIcon, wetnessIcon: $wetnessIcon, comment: $comment, difficulty: $difficulty, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.quality, quality) ||
                const DeepCollectionEquality()
                    .equals(other.quality, quality)) &&
            (identical(other.safetyIcon, safetyIcon) ||
                const DeepCollectionEquality()
                    .equals(other.safetyIcon, safetyIcon)) &&
            (identical(other.wetnessIcon, wetnessIcon) ||
                const DeepCollectionEquality()
                    .equals(other.wetnessIcon, wetnessIcon)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.difficulty, difficulty) ||
                const DeepCollectionEquality()
                    .equals(other.difficulty, difficulty)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(quality) ^
      const DeepCollectionEquality().hash(safetyIcon) ^
      const DeepCollectionEquality().hash(wetnessIcon) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(difficulty) ^
      const DeepCollectionEquality().hash(source);

  @JsonKey(ignore: true)
  @override
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentToJson(this);
  }
}

abstract class _Comment implements Comment {
  factory _Comment(
      @JsonKey(name: 'userid')
          String user,
      @JsonKey(name: 'datum')
          DateTime date,
      @IntConverter()
      @JsonKey(name: 'qual')
          int? quality,
      @RouteSafetyConverter()
      @JsonKey(name: 'sicher')
          IconData? safetyIcon,
      @RouteWetnessConverter()
      @JsonKey(name: 'nass')
          IconData? wetnessIcon,
      @JsonKey(name: 'kommentar')
          String comment,
      @RouteDifficultyConverter()
      @JsonKey(name: 'schwer')
          String? difficulty,
      @CommentSourceConverter()
      @JsonKey(name: 'source')
          CommentSource source) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override // @JsonKey(name: 'komment_ID') int kommentId,
  @JsonKey(name: 'userid')
  String get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'datum')
  DateTime get date => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'adatum') String adatum,
// @JsonKey(name: 'wegid') int wegid,
// @JsonKey(name: 'sektorid') int sektorid,
// @JsonKey(name: 'gebietid') int gebietid,
  @IntConverter()
  @JsonKey(name: 'qual')
  int? get quality => throw _privateConstructorUsedError;
  @override
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  IconData? get safetyIcon => throw _privateConstructorUsedError;
  @override
  @RouteWetnessConverter()
  @JsonKey(name: 'nass')
  IconData? get wetnessIcon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kommentar')
  String get comment => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'gipfelid') int gipfelid,
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwer')
  String? get difficulty => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'geklettert') String geklettert,
// @JsonKey(name: 'begehung') String begehung,
  @CommentSourceConverter()
  @JsonKey(name: 'source')
  CommentSource get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentCopyWith<_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
