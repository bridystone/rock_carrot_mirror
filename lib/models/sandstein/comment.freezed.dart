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
      String source) {
    return _Comment(
      kommentId,
      userid,
      datum,
      adatum,
      wegid,
      sektorid,
      gebietid,
      qual,
      safetyRouteIcon,
      nass,
      kommentar,
      gipfelid,
      schwer,
      geklettert,
      begehung,
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
  int get kommentId => throw _privateConstructorUsedError;
  String get userid => throw _privateConstructorUsedError;
  String get datum => throw _privateConstructorUsedError;
  String get adatum => throw _privateConstructorUsedError;
  int get wegid => throw _privateConstructorUsedError;
  int get sektorid => throw _privateConstructorUsedError;
  int get gebietid => throw _privateConstructorUsedError;
  String get qual =>
      throw _privateConstructorUsedError; // TODO: TEST SQL Convert!
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  String get safetyRouteIcon => throw _privateConstructorUsedError;
  String get nass => throw _privateConstructorUsedError;
  String get kommentar => throw _privateConstructorUsedError;
  int get gipfelid => throw _privateConstructorUsedError;
  String get schwer => throw _privateConstructorUsedError;
  String get geklettert => throw _privateConstructorUsedError;
  String get begehung => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {int kommentId,
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
      String source});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object? kommentId = freezed,
    Object? userid = freezed,
    Object? datum = freezed,
    Object? adatum = freezed,
    Object? wegid = freezed,
    Object? sektorid = freezed,
    Object? gebietid = freezed,
    Object? qual = freezed,
    Object? safetyRouteIcon = freezed,
    Object? nass = freezed,
    Object? kommentar = freezed,
    Object? gipfelid = freezed,
    Object? schwer = freezed,
    Object? geklettert = freezed,
    Object? begehung = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      kommentId: kommentId == freezed
          ? _value.kommentId
          : kommentId // ignore: cast_nullable_to_non_nullable
              as int,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      datum: datum == freezed
          ? _value.datum
          : datum // ignore: cast_nullable_to_non_nullable
              as String,
      adatum: adatum == freezed
          ? _value.adatum
          : adatum // ignore: cast_nullable_to_non_nullable
              as String,
      wegid: wegid == freezed
          ? _value.wegid
          : wegid // ignore: cast_nullable_to_non_nullable
              as int,
      sektorid: sektorid == freezed
          ? _value.sektorid
          : sektorid // ignore: cast_nullable_to_non_nullable
              as int,
      gebietid: gebietid == freezed
          ? _value.gebietid
          : gebietid // ignore: cast_nullable_to_non_nullable
              as int,
      qual: qual == freezed
          ? _value.qual
          : qual // ignore: cast_nullable_to_non_nullable
              as String,
      safetyRouteIcon: safetyRouteIcon == freezed
          ? _value.safetyRouteIcon
          : safetyRouteIcon // ignore: cast_nullable_to_non_nullable
              as String,
      nass: nass == freezed
          ? _value.nass
          : nass // ignore: cast_nullable_to_non_nullable
              as String,
      kommentar: kommentar == freezed
          ? _value.kommentar
          : kommentar // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelid: gipfelid == freezed
          ? _value.gipfelid
          : gipfelid // ignore: cast_nullable_to_non_nullable
              as int,
      schwer: schwer == freezed
          ? _value.schwer
          : schwer // ignore: cast_nullable_to_non_nullable
              as String,
      geklettert: geklettert == freezed
          ? _value.geklettert
          : geklettert // ignore: cast_nullable_to_non_nullable
              as String,
      begehung: begehung == freezed
          ? _value.begehung
          : begehung // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int kommentId,
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
      String source});
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
    Object? kommentId = freezed,
    Object? userid = freezed,
    Object? datum = freezed,
    Object? adatum = freezed,
    Object? wegid = freezed,
    Object? sektorid = freezed,
    Object? gebietid = freezed,
    Object? qual = freezed,
    Object? safetyRouteIcon = freezed,
    Object? nass = freezed,
    Object? kommentar = freezed,
    Object? gipfelid = freezed,
    Object? schwer = freezed,
    Object? geklettert = freezed,
    Object? begehung = freezed,
    Object? source = freezed,
  }) {
    return _then(_Comment(
      kommentId == freezed
          ? _value.kommentId
          : kommentId // ignore: cast_nullable_to_non_nullable
              as int,
      userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      datum == freezed
          ? _value.datum
          : datum // ignore: cast_nullable_to_non_nullable
              as String,
      adatum == freezed
          ? _value.adatum
          : adatum // ignore: cast_nullable_to_non_nullable
              as String,
      wegid == freezed
          ? _value.wegid
          : wegid // ignore: cast_nullable_to_non_nullable
              as int,
      sektorid == freezed
          ? _value.sektorid
          : sektorid // ignore: cast_nullable_to_non_nullable
              as int,
      gebietid == freezed
          ? _value.gebietid
          : gebietid // ignore: cast_nullable_to_non_nullable
              as int,
      qual == freezed
          ? _value.qual
          : qual // ignore: cast_nullable_to_non_nullable
              as String,
      safetyRouteIcon == freezed
          ? _value.safetyRouteIcon
          : safetyRouteIcon // ignore: cast_nullable_to_non_nullable
              as String,
      nass == freezed
          ? _value.nass
          : nass // ignore: cast_nullable_to_non_nullable
              as String,
      kommentar == freezed
          ? _value.kommentar
          : kommentar // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelid == freezed
          ? _value.gipfelid
          : gipfelid // ignore: cast_nullable_to_non_nullable
              as int,
      schwer == freezed
          ? _value.schwer
          : schwer // ignore: cast_nullable_to_non_nullable
              as String,
      geklettert == freezed
          ? _value.geklettert
          : geklettert // ignore: cast_nullable_to_non_nullable
              as String,
      begehung == freezed
          ? _value.begehung
          : begehung // ignore: cast_nullable_to_non_nullable
              as String,
      source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  _$_Comment(
      this.kommentId,
      this.userid,
      this.datum,
      this.adatum,
      this.wegid,
      this.sektorid,
      this.gebietid,
      this.qual,
      @RouteSafetyConverter() @JsonKey(name: 'sicher') this.safetyRouteIcon,
      this.nass,
      this.kommentar,
      this.gipfelid,
      this.schwer,
      this.geklettert,
      this.begehung,
      this.source);

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentFromJson(json);

  @override
  final int kommentId;
  @override
  final String userid;
  @override
  final String datum;
  @override
  final String adatum;
  @override
  final int wegid;
  @override
  final int sektorid;
  @override
  final int gebietid;
  @override
  final String qual;
  @override // TODO: TEST SQL Convert!
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  final String safetyRouteIcon;
  @override
  final String nass;
  @override
  final String kommentar;
  @override
  final int gipfelid;
  @override
  final String schwer;
  @override
  final String geklettert;
  @override
  final String begehung;
  @override
  final String source;

  @override
  String toString() {
    return 'Comment(kommentId: $kommentId, userid: $userid, datum: $datum, adatum: $adatum, wegid: $wegid, sektorid: $sektorid, gebietid: $gebietid, qual: $qual, safetyRouteIcon: $safetyRouteIcon, nass: $nass, kommentar: $kommentar, gipfelid: $gipfelid, schwer: $schwer, geklettert: $geklettert, begehung: $begehung, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
            (identical(other.kommentId, kommentId) ||
                const DeepCollectionEquality()
                    .equals(other.kommentId, kommentId)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.datum, datum) ||
                const DeepCollectionEquality().equals(other.datum, datum)) &&
            (identical(other.adatum, adatum) ||
                const DeepCollectionEquality().equals(other.adatum, adatum)) &&
            (identical(other.wegid, wegid) ||
                const DeepCollectionEquality().equals(other.wegid, wegid)) &&
            (identical(other.sektorid, sektorid) ||
                const DeepCollectionEquality()
                    .equals(other.sektorid, sektorid)) &&
            (identical(other.gebietid, gebietid) ||
                const DeepCollectionEquality()
                    .equals(other.gebietid, gebietid)) &&
            (identical(other.qual, qual) ||
                const DeepCollectionEquality().equals(other.qual, qual)) &&
            (identical(other.safetyRouteIcon, safetyRouteIcon) ||
                const DeepCollectionEquality()
                    .equals(other.safetyRouteIcon, safetyRouteIcon)) &&
            (identical(other.nass, nass) ||
                const DeepCollectionEquality().equals(other.nass, nass)) &&
            (identical(other.kommentar, kommentar) ||
                const DeepCollectionEquality()
                    .equals(other.kommentar, kommentar)) &&
            (identical(other.gipfelid, gipfelid) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelid, gipfelid)) &&
            (identical(other.schwer, schwer) ||
                const DeepCollectionEquality().equals(other.schwer, schwer)) &&
            (identical(other.geklettert, geklettert) ||
                const DeepCollectionEquality()
                    .equals(other.geklettert, geklettert)) &&
            (identical(other.begehung, begehung) ||
                const DeepCollectionEquality()
                    .equals(other.begehung, begehung)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kommentId) ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(datum) ^
      const DeepCollectionEquality().hash(adatum) ^
      const DeepCollectionEquality().hash(wegid) ^
      const DeepCollectionEquality().hash(sektorid) ^
      const DeepCollectionEquality().hash(gebietid) ^
      const DeepCollectionEquality().hash(qual) ^
      const DeepCollectionEquality().hash(safetyRouteIcon) ^
      const DeepCollectionEquality().hash(nass) ^
      const DeepCollectionEquality().hash(kommentar) ^
      const DeepCollectionEquality().hash(gipfelid) ^
      const DeepCollectionEquality().hash(schwer) ^
      const DeepCollectionEquality().hash(geklettert) ^
      const DeepCollectionEquality().hash(begehung) ^
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
      String source) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  int get kommentId => throw _privateConstructorUsedError;
  @override
  String get userid => throw _privateConstructorUsedError;
  @override
  String get datum => throw _privateConstructorUsedError;
  @override
  String get adatum => throw _privateConstructorUsedError;
  @override
  int get wegid => throw _privateConstructorUsedError;
  @override
  int get sektorid => throw _privateConstructorUsedError;
  @override
  int get gebietid => throw _privateConstructorUsedError;
  @override
  String get qual => throw _privateConstructorUsedError;
  @override // TODO: TEST SQL Convert!
  @RouteSafetyConverter()
  @JsonKey(name: 'sicher')
  String get safetyRouteIcon => throw _privateConstructorUsedError;
  @override
  String get nass => throw _privateConstructorUsedError;
  @override
  String get kommentar => throw _privateConstructorUsedError;
  @override
  int get gipfelid => throw _privateConstructorUsedError;
  @override
  String get schwer => throw _privateConstructorUsedError;
  @override
  String get geklettert => throw _privateConstructorUsedError;
  @override
  String get begehung => throw _privateConstructorUsedError;
  @override
  String get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentCopyWith<_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
