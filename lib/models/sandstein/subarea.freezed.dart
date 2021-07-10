// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subarea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subarea _$SubareaFromJson(Map<String, dynamic> json) {
  return _Subarea.fromJson(json);
}

/// @nodoc
class _$SubareaTearOff {
  const _$SubareaTearOff();

  _Subarea call(
      @JsonKey(name: 'sektor_ID') int sektorid,
      @JsonKey(name: 'gebietid') int gebietid,
      @JsonKey(name: 'sektornr') String sektornr,
      @JsonKey(name: 'sektorname_d') String sektornameD,
      @JsonKey(name: 'sektorname_cz') String sektornameCZ,
      @JsonKey(name: 'gipfel_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount) {
    return _Subarea(
      sektorid,
      gebietid,
      sektornr,
      sektornameD,
      sektornameCZ,
      childCount,
      commentCount,
    );
  }

  Subarea fromJson(Map<String, Object> json) {
    return Subarea.fromJson(json);
  }
}

/// @nodoc
const $Subarea = _$SubareaTearOff();

/// @nodoc
mixin _$Subarea {
  @JsonKey(name: 'sektor_ID')
  int get sektorid => throw _privateConstructorUsedError;
  @JsonKey(name: 'gebietid')
  int get gebietid => throw _privateConstructorUsedError;
  @JsonKey(name: 'sektornr')
  String get sektornr => throw _privateConstructorUsedError;
  @JsonKey(name: 'sektorname_d')
  String get sektornameD => throw _privateConstructorUsedError;
  @JsonKey(name: 'sektorname_cz')
  String get sektornameCZ => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfel_count')
  int get childCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubareaCopyWith<Subarea> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubareaCopyWith<$Res> {
  factory $SubareaCopyWith(Subarea value, $Res Function(Subarea) then) =
      _$SubareaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sektor_ID') int sektorid,
      @JsonKey(name: 'gebietid') int gebietid,
      @JsonKey(name: 'sektornr') String sektornr,
      @JsonKey(name: 'sektorname_d') String sektornameD,
      @JsonKey(name: 'sektorname_cz') String sektornameCZ,
      @JsonKey(name: 'gipfel_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount});
}

/// @nodoc
class _$SubareaCopyWithImpl<$Res> implements $SubareaCopyWith<$Res> {
  _$SubareaCopyWithImpl(this._value, this._then);

  final Subarea _value;
  // ignore: unused_field
  final $Res Function(Subarea) _then;

  @override
  $Res call({
    Object? sektorid = freezed,
    Object? gebietid = freezed,
    Object? sektornr = freezed,
    Object? sektornameD = freezed,
    Object? sektornameCZ = freezed,
    Object? childCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      sektorid: sektorid == freezed
          ? _value.sektorid
          : sektorid // ignore: cast_nullable_to_non_nullable
              as int,
      gebietid: gebietid == freezed
          ? _value.gebietid
          : gebietid // ignore: cast_nullable_to_non_nullable
              as int,
      sektornr: sektornr == freezed
          ? _value.sektornr
          : sektornr // ignore: cast_nullable_to_non_nullable
              as String,
      sektornameD: sektornameD == freezed
          ? _value.sektornameD
          : sektornameD // ignore: cast_nullable_to_non_nullable
              as String,
      sektornameCZ: sektornameCZ == freezed
          ? _value.sektornameCZ
          : sektornameCZ // ignore: cast_nullable_to_non_nullable
              as String,
      childCount: childCount == freezed
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SubareaCopyWith<$Res> implements $SubareaCopyWith<$Res> {
  factory _$SubareaCopyWith(_Subarea value, $Res Function(_Subarea) then) =
      __$SubareaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sektor_ID') int sektorid,
      @JsonKey(name: 'gebietid') int gebietid,
      @JsonKey(name: 'sektornr') String sektornr,
      @JsonKey(name: 'sektorname_d') String sektornameD,
      @JsonKey(name: 'sektorname_cz') String sektornameCZ,
      @JsonKey(name: 'gipfel_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount});
}

/// @nodoc
class __$SubareaCopyWithImpl<$Res> extends _$SubareaCopyWithImpl<$Res>
    implements _$SubareaCopyWith<$Res> {
  __$SubareaCopyWithImpl(_Subarea _value, $Res Function(_Subarea) _then)
      : super(_value, (v) => _then(v as _Subarea));

  @override
  _Subarea get _value => super._value as _Subarea;

  @override
  $Res call({
    Object? sektorid = freezed,
    Object? gebietid = freezed,
    Object? sektornr = freezed,
    Object? sektornameD = freezed,
    Object? sektornameCZ = freezed,
    Object? childCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_Subarea(
      sektorid == freezed
          ? _value.sektorid
          : sektorid // ignore: cast_nullable_to_non_nullable
              as int,
      gebietid == freezed
          ? _value.gebietid
          : gebietid // ignore: cast_nullable_to_non_nullable
              as int,
      sektornr == freezed
          ? _value.sektornr
          : sektornr // ignore: cast_nullable_to_non_nullable
              as String,
      sektornameD == freezed
          ? _value.sektornameD
          : sektornameD // ignore: cast_nullable_to_non_nullable
              as String,
      sektornameCZ == freezed
          ? _value.sektornameCZ
          : sektornameCZ // ignore: cast_nullable_to_non_nullable
              as String,
      childCount == freezed
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subarea implements _Subarea {
  _$_Subarea(
      @JsonKey(name: 'sektor_ID') this.sektorid,
      @JsonKey(name: 'gebietid') this.gebietid,
      @JsonKey(name: 'sektornr') this.sektornr,
      @JsonKey(name: 'sektorname_d') this.sektornameD,
      @JsonKey(name: 'sektorname_cz') this.sektornameCZ,
      @JsonKey(name: 'gipfel_count') this.childCount,
      @JsonKey(name: 'komment_count') this.commentCount);

  factory _$_Subarea.fromJson(Map<String, dynamic> json) =>
      _$_$_SubareaFromJson(json);

  @override
  @JsonKey(name: 'sektor_ID')
  final int sektorid;
  @override
  @JsonKey(name: 'gebietid')
  final int gebietid;
  @override
  @JsonKey(name: 'sektornr')
  final String sektornr;
  @override
  @JsonKey(name: 'sektorname_d')
  final String sektornameD;
  @override
  @JsonKey(name: 'sektorname_cz')
  final String sektornameCZ;
  @override
  @JsonKey(name: 'gipfel_count')
  final int childCount;
  @override
  @JsonKey(name: 'komment_count')
  final int commentCount;

  @override
  String toString() {
    return 'Subarea(sektorid: $sektorid, gebietid: $gebietid, sektornr: $sektornr, sektornameD: $sektornameD, sektornameCZ: $sektornameCZ, childCount: $childCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subarea &&
            (identical(other.sektorid, sektorid) ||
                const DeepCollectionEquality()
                    .equals(other.sektorid, sektorid)) &&
            (identical(other.gebietid, gebietid) ||
                const DeepCollectionEquality()
                    .equals(other.gebietid, gebietid)) &&
            (identical(other.sektornr, sektornr) ||
                const DeepCollectionEquality()
                    .equals(other.sektornr, sektornr)) &&
            (identical(other.sektornameD, sektornameD) ||
                const DeepCollectionEquality()
                    .equals(other.sektornameD, sektornameD)) &&
            (identical(other.sektornameCZ, sektornameCZ) ||
                const DeepCollectionEquality()
                    .equals(other.sektornameCZ, sektornameCZ)) &&
            (identical(other.childCount, childCount) ||
                const DeepCollectionEquality()
                    .equals(other.childCount, childCount)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sektorid) ^
      const DeepCollectionEquality().hash(gebietid) ^
      const DeepCollectionEquality().hash(sektornr) ^
      const DeepCollectionEquality().hash(sektornameD) ^
      const DeepCollectionEquality().hash(sektornameCZ) ^
      const DeepCollectionEquality().hash(childCount) ^
      const DeepCollectionEquality().hash(commentCount);

  @JsonKey(ignore: true)
  @override
  _$SubareaCopyWith<_Subarea> get copyWith =>
      __$SubareaCopyWithImpl<_Subarea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubareaToJson(this);
  }
}

abstract class _Subarea implements Subarea {
  factory _Subarea(
      @JsonKey(name: 'sektor_ID') int sektorid,
      @JsonKey(name: 'gebietid') int gebietid,
      @JsonKey(name: 'sektornr') String sektornr,
      @JsonKey(name: 'sektorname_d') String sektornameD,
      @JsonKey(name: 'sektorname_cz') String sektornameCZ,
      @JsonKey(name: 'gipfel_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount) = _$_Subarea;

  factory _Subarea.fromJson(Map<String, dynamic> json) = _$_Subarea.fromJson;

  @override
  @JsonKey(name: 'sektor_ID')
  int get sektorid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gebietid')
  int get gebietid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sektornr')
  String get sektornr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sektorname_d')
  String get sektornameD => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sektorname_cz')
  String get sektornameCZ => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfel_count')
  int get childCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubareaCopyWith<_Subarea> get copyWith =>
      throw _privateConstructorUsedError;
}
