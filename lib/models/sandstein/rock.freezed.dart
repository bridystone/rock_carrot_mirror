// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rock _$RockFromJson(Map<String, dynamic> json) {
  return _Rock.fromJson(json);
}

/// @nodoc
class _$RockTearOff {
  const _$RockTearOff();

  _Rock call(
      @JsonKey(name: 'gipfel_ID') int gipfelId,
      @JsonKey(name: 'gipfelnr') String gipfelNr,
      @JsonKey(name: 'gipfelname_d') String gipfelName,
      @JsonKey(name: 'gipfelname_cz') String gipfelNameCZ,
      @JsonKey(name: 'status') String gipfelStatus,
      @JsonKey(name: 'typ') String gipfelTyp,
      @JsonKey(name: 'vgrd') String vgrd,
      @JsonKey(name: 'ngrd') String ngrd,
      @JsonKey(name: 'posfehler') String posfehler,
      @JsonKey(name: 'schartenhoehe') String schartenhoehe,
      @JsonKey(name: 'talhoehe') String talhoehe,
      @JsonKey(name: 'sektorid') int sektorid,
      @JsonKey(name: 'wege_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) {
    return _Rock(
      gipfelId,
      gipfelNr,
      gipfelName,
      gipfelNameCZ,
      gipfelStatus,
      gipfelTyp,
      vgrd,
      ngrd,
      posfehler,
      schartenhoehe,
      talhoehe,
      sektorid,
      childCount,
      commentCount,
      lastUpdated,
    );
  }

  Rock fromJson(Map<String, Object> json) {
    return Rock.fromJson(json);
  }
}

/// @nodoc
const $Rock = _$RockTearOff();

/// @nodoc
mixin _$Rock {
  @JsonKey(name: 'gipfel_ID')
  int get gipfelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfelnr')
  String get gipfelNr => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfelname_d')
  String get gipfelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfelname_cz')
  String get gipfelNameCZ => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get gipfelStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'typ')
  String get gipfelTyp => throw _privateConstructorUsedError;
  @JsonKey(name: 'vgrd')
  String get vgrd => throw _privateConstructorUsedError;
  @JsonKey(name: 'ngrd')
  String get ngrd => throw _privateConstructorUsedError;
  @JsonKey(name: 'posfehler')
  String get posfehler => throw _privateConstructorUsedError;
  @JsonKey(name: 'schartenhoehe')
  String get schartenhoehe => throw _privateConstructorUsedError;
  @JsonKey(name: 'talhoehe')
  String get talhoehe => throw _privateConstructorUsedError;
  @JsonKey(name: 'sektorid')
  int get sektorid => throw _privateConstructorUsedError;
  @JsonKey(name: 'wege_count')
  int get childCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RockCopyWith<Rock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockCopyWith<$Res> {
  factory $RockCopyWith(Rock value, $Res Function(Rock) then) =
      _$RockCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'gipfel_ID') int gipfelId,
      @JsonKey(name: 'gipfelnr') String gipfelNr,
      @JsonKey(name: 'gipfelname_d') String gipfelName,
      @JsonKey(name: 'gipfelname_cz') String gipfelNameCZ,
      @JsonKey(name: 'status') String gipfelStatus,
      @JsonKey(name: 'typ') String gipfelTyp,
      @JsonKey(name: 'vgrd') String vgrd,
      @JsonKey(name: 'ngrd') String ngrd,
      @JsonKey(name: 'posfehler') String posfehler,
      @JsonKey(name: 'schartenhoehe') String schartenhoehe,
      @JsonKey(name: 'talhoehe') String talhoehe,
      @JsonKey(name: 'sektorid') int sektorid,
      @JsonKey(name: 'wege_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class _$RockCopyWithImpl<$Res> implements $RockCopyWith<$Res> {
  _$RockCopyWithImpl(this._value, this._then);

  final Rock _value;
  // ignore: unused_field
  final $Res Function(Rock) _then;

  @override
  $Res call({
    Object? gipfelId = freezed,
    Object? gipfelNr = freezed,
    Object? gipfelName = freezed,
    Object? gipfelNameCZ = freezed,
    Object? gipfelStatus = freezed,
    Object? gipfelTyp = freezed,
    Object? vgrd = freezed,
    Object? ngrd = freezed,
    Object? posfehler = freezed,
    Object? schartenhoehe = freezed,
    Object? talhoehe = freezed,
    Object? sektorid = freezed,
    Object? childCount = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      gipfelId: gipfelId == freezed
          ? _value.gipfelId
          : gipfelId // ignore: cast_nullable_to_non_nullable
              as int,
      gipfelNr: gipfelNr == freezed
          ? _value.gipfelNr
          : gipfelNr // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelName: gipfelName == freezed
          ? _value.gipfelName
          : gipfelName // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelNameCZ: gipfelNameCZ == freezed
          ? _value.gipfelNameCZ
          : gipfelNameCZ // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelStatus: gipfelStatus == freezed
          ? _value.gipfelStatus
          : gipfelStatus // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelTyp: gipfelTyp == freezed
          ? _value.gipfelTyp
          : gipfelTyp // ignore: cast_nullable_to_non_nullable
              as String,
      vgrd: vgrd == freezed
          ? _value.vgrd
          : vgrd // ignore: cast_nullable_to_non_nullable
              as String,
      ngrd: ngrd == freezed
          ? _value.ngrd
          : ngrd // ignore: cast_nullable_to_non_nullable
              as String,
      posfehler: posfehler == freezed
          ? _value.posfehler
          : posfehler // ignore: cast_nullable_to_non_nullable
              as String,
      schartenhoehe: schartenhoehe == freezed
          ? _value.schartenhoehe
          : schartenhoehe // ignore: cast_nullable_to_non_nullable
              as String,
      talhoehe: talhoehe == freezed
          ? _value.talhoehe
          : talhoehe // ignore: cast_nullable_to_non_nullable
              as String,
      sektorid: sektorid == freezed
          ? _value.sektorid
          : sektorid // ignore: cast_nullable_to_non_nullable
              as int,
      childCount: childCount == freezed
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$RockCopyWith<$Res> implements $RockCopyWith<$Res> {
  factory _$RockCopyWith(_Rock value, $Res Function(_Rock) then) =
      __$RockCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'gipfel_ID') int gipfelId,
      @JsonKey(name: 'gipfelnr') String gipfelNr,
      @JsonKey(name: 'gipfelname_d') String gipfelName,
      @JsonKey(name: 'gipfelname_cz') String gipfelNameCZ,
      @JsonKey(name: 'status') String gipfelStatus,
      @JsonKey(name: 'typ') String gipfelTyp,
      @JsonKey(name: 'vgrd') String vgrd,
      @JsonKey(name: 'ngrd') String ngrd,
      @JsonKey(name: 'posfehler') String posfehler,
      @JsonKey(name: 'schartenhoehe') String schartenhoehe,
      @JsonKey(name: 'talhoehe') String talhoehe,
      @JsonKey(name: 'sektorid') int sektorid,
      @JsonKey(name: 'wege_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class __$RockCopyWithImpl<$Res> extends _$RockCopyWithImpl<$Res>
    implements _$RockCopyWith<$Res> {
  __$RockCopyWithImpl(_Rock _value, $Res Function(_Rock) _then)
      : super(_value, (v) => _then(v as _Rock));

  @override
  _Rock get _value => super._value as _Rock;

  @override
  $Res call({
    Object? gipfelId = freezed,
    Object? gipfelNr = freezed,
    Object? gipfelName = freezed,
    Object? gipfelNameCZ = freezed,
    Object? gipfelStatus = freezed,
    Object? gipfelTyp = freezed,
    Object? vgrd = freezed,
    Object? ngrd = freezed,
    Object? posfehler = freezed,
    Object? schartenhoehe = freezed,
    Object? talhoehe = freezed,
    Object? sektorid = freezed,
    Object? childCount = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Rock(
      gipfelId == freezed
          ? _value.gipfelId
          : gipfelId // ignore: cast_nullable_to_non_nullable
              as int,
      gipfelNr == freezed
          ? _value.gipfelNr
          : gipfelNr // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelName == freezed
          ? _value.gipfelName
          : gipfelName // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelNameCZ == freezed
          ? _value.gipfelNameCZ
          : gipfelNameCZ // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelStatus == freezed
          ? _value.gipfelStatus
          : gipfelStatus // ignore: cast_nullable_to_non_nullable
              as String,
      gipfelTyp == freezed
          ? _value.gipfelTyp
          : gipfelTyp // ignore: cast_nullable_to_non_nullable
              as String,
      vgrd == freezed
          ? _value.vgrd
          : vgrd // ignore: cast_nullable_to_non_nullable
              as String,
      ngrd == freezed
          ? _value.ngrd
          : ngrd // ignore: cast_nullable_to_non_nullable
              as String,
      posfehler == freezed
          ? _value.posfehler
          : posfehler // ignore: cast_nullable_to_non_nullable
              as String,
      schartenhoehe == freezed
          ? _value.schartenhoehe
          : schartenhoehe // ignore: cast_nullable_to_non_nullable
              as String,
      talhoehe == freezed
          ? _value.talhoehe
          : talhoehe // ignore: cast_nullable_to_non_nullable
              as String,
      sektorid == freezed
          ? _value.sektorid
          : sektorid // ignore: cast_nullable_to_non_nullable
              as int,
      childCount == freezed
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rock implements _Rock {
  _$_Rock(
      @JsonKey(name: 'gipfel_ID') this.gipfelId,
      @JsonKey(name: 'gipfelnr') this.gipfelNr,
      @JsonKey(name: 'gipfelname_d') this.gipfelName,
      @JsonKey(name: 'gipfelname_cz') this.gipfelNameCZ,
      @JsonKey(name: 'status') this.gipfelStatus,
      @JsonKey(name: 'typ') this.gipfelTyp,
      @JsonKey(name: 'vgrd') this.vgrd,
      @JsonKey(name: 'ngrd') this.ngrd,
      @JsonKey(name: 'posfehler') this.posfehler,
      @JsonKey(name: 'schartenhoehe') this.schartenhoehe,
      @JsonKey(name: 'talhoehe') this.talhoehe,
      @JsonKey(name: 'sektorid') this.sektorid,
      @JsonKey(name: 'wege_count') this.childCount,
      @JsonKey(name: 'komment_count') this.commentCount,
      @JsonKey(name: 'insert_timestamp') this.lastUpdated);

  factory _$_Rock.fromJson(Map<String, dynamic> json) =>
      _$_$_RockFromJson(json);

  @override
  @JsonKey(name: 'gipfel_ID')
  final int gipfelId;
  @override
  @JsonKey(name: 'gipfelnr')
  final String gipfelNr;
  @override
  @JsonKey(name: 'gipfelname_d')
  final String gipfelName;
  @override
  @JsonKey(name: 'gipfelname_cz')
  final String gipfelNameCZ;
  @override
  @JsonKey(name: 'status')
  final String gipfelStatus;
  @override
  @JsonKey(name: 'typ')
  final String gipfelTyp;
  @override
  @JsonKey(name: 'vgrd')
  final String vgrd;
  @override
  @JsonKey(name: 'ngrd')
  final String ngrd;
  @override
  @JsonKey(name: 'posfehler')
  final String posfehler;
  @override
  @JsonKey(name: 'schartenhoehe')
  final String schartenhoehe;
  @override
  @JsonKey(name: 'talhoehe')
  final String talhoehe;
  @override
  @JsonKey(name: 'sektorid')
  final int sektorid;
  @override
  @JsonKey(name: 'wege_count')
  final int childCount;
  @override
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Rock(gipfelId: $gipfelId, gipfelNr: $gipfelNr, gipfelName: $gipfelName, gipfelNameCZ: $gipfelNameCZ, gipfelStatus: $gipfelStatus, gipfelTyp: $gipfelTyp, vgrd: $vgrd, ngrd: $ngrd, posfehler: $posfehler, schartenhoehe: $schartenhoehe, talhoehe: $talhoehe, sektorid: $sektorid, childCount: $childCount, commentCount: $commentCount, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rock &&
            (identical(other.gipfelId, gipfelId) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelId, gipfelId)) &&
            (identical(other.gipfelNr, gipfelNr) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelNr, gipfelNr)) &&
            (identical(other.gipfelName, gipfelName) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelName, gipfelName)) &&
            (identical(other.gipfelNameCZ, gipfelNameCZ) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelNameCZ, gipfelNameCZ)) &&
            (identical(other.gipfelStatus, gipfelStatus) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelStatus, gipfelStatus)) &&
            (identical(other.gipfelTyp, gipfelTyp) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelTyp, gipfelTyp)) &&
            (identical(other.vgrd, vgrd) ||
                const DeepCollectionEquality().equals(other.vgrd, vgrd)) &&
            (identical(other.ngrd, ngrd) ||
                const DeepCollectionEquality().equals(other.ngrd, ngrd)) &&
            (identical(other.posfehler, posfehler) ||
                const DeepCollectionEquality()
                    .equals(other.posfehler, posfehler)) &&
            (identical(other.schartenhoehe, schartenhoehe) ||
                const DeepCollectionEquality()
                    .equals(other.schartenhoehe, schartenhoehe)) &&
            (identical(other.talhoehe, talhoehe) ||
                const DeepCollectionEquality()
                    .equals(other.talhoehe, talhoehe)) &&
            (identical(other.sektorid, sektorid) ||
                const DeepCollectionEquality()
                    .equals(other.sektorid, sektorid)) &&
            (identical(other.childCount, childCount) ||
                const DeepCollectionEquality()
                    .equals(other.childCount, childCount)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gipfelId) ^
      const DeepCollectionEquality().hash(gipfelNr) ^
      const DeepCollectionEquality().hash(gipfelName) ^
      const DeepCollectionEquality().hash(gipfelNameCZ) ^
      const DeepCollectionEquality().hash(gipfelStatus) ^
      const DeepCollectionEquality().hash(gipfelTyp) ^
      const DeepCollectionEquality().hash(vgrd) ^
      const DeepCollectionEquality().hash(ngrd) ^
      const DeepCollectionEquality().hash(posfehler) ^
      const DeepCollectionEquality().hash(schartenhoehe) ^
      const DeepCollectionEquality().hash(talhoehe) ^
      const DeepCollectionEquality().hash(sektorid) ^
      const DeepCollectionEquality().hash(childCount) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$RockCopyWith<_Rock> get copyWith =>
      __$RockCopyWithImpl<_Rock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RockToJson(this);
  }
}

abstract class _Rock implements Rock {
  factory _Rock(
      @JsonKey(name: 'gipfel_ID') int gipfelId,
      @JsonKey(name: 'gipfelnr') String gipfelNr,
      @JsonKey(name: 'gipfelname_d') String gipfelName,
      @JsonKey(name: 'gipfelname_cz') String gipfelNameCZ,
      @JsonKey(name: 'status') String gipfelStatus,
      @JsonKey(name: 'typ') String gipfelTyp,
      @JsonKey(name: 'vgrd') String vgrd,
      @JsonKey(name: 'ngrd') String ngrd,
      @JsonKey(name: 'posfehler') String posfehler,
      @JsonKey(name: 'schartenhoehe') String schartenhoehe,
      @JsonKey(name: 'talhoehe') String talhoehe,
      @JsonKey(name: 'sektorid') int sektorid,
      @JsonKey(name: 'wege_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) = _$_Rock;

  factory _Rock.fromJson(Map<String, dynamic> json) = _$_Rock.fromJson;

  @override
  @JsonKey(name: 'gipfel_ID')
  int get gipfelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfelnr')
  String get gipfelNr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfelname_d')
  String get gipfelName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfelname_cz')
  String get gipfelNameCZ => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String get gipfelStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'typ')
  String get gipfelTyp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vgrd')
  String get vgrd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ngrd')
  String get ngrd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'posfehler')
  String get posfehler => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'schartenhoehe')
  String get schartenhoehe => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'talhoehe')
  String get talhoehe => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sektorid')
  int get sektorid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wege_count')
  int get childCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RockCopyWith<_Rock> get copyWith => throw _privateConstructorUsedError;
}
