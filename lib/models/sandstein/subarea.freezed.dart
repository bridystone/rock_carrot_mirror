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
      @JsonKey(name: 'sektor_ID') int id,
      @DoubleConverter() @JsonKey(name: 'sektornr') double? nr,
      @JsonKey(name: 'sektorname_d') String name_internal,
      @JsonKey(name: 'sektorname_cz') String secondLanguageName_internal,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) {
    return _Subarea(
      id,
      nr,
      name_internal,
      secondLanguageName_internal,
      commentCount,
      lastUpdated,
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
  int get id =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'gebietid') int gebietid,
  @DoubleConverter()
  @JsonKey(name: 'sektornr')
  double? get nr => throw _privateConstructorUsedError;
  @JsonKey(name: 'sektorname_d')
  String get name_internal => throw _privateConstructorUsedError;
  @JsonKey(name: 'sektorname_cz')
  String get secondLanguageName_internal =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'gipfel_count') int childCount,
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubareaCopyWith<Subarea> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubareaCopyWith<$Res> {
  factory $SubareaCopyWith(Subarea value, $Res Function(Subarea) then) =
      _$SubareaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sektor_ID') int id,
      @DoubleConverter() @JsonKey(name: 'sektornr') double? nr,
      @JsonKey(name: 'sektorname_d') String name_internal,
      @JsonKey(name: 'sektorname_cz') String secondLanguageName_internal,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class _$SubareaCopyWithImpl<$Res> implements $SubareaCopyWith<$Res> {
  _$SubareaCopyWithImpl(this._value, this._then);

  final Subarea _value;
  // ignore: unused_field
  final $Res Function(Subarea) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nr = freezed,
    Object? name_internal = freezed,
    Object? secondLanguageName_internal = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nr: nr == freezed
          ? _value.nr
          : nr // ignore: cast_nullable_to_non_nullable
              as double?,
      name_internal: name_internal == freezed
          ? _value.name_internal
          : name_internal // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageName_internal: secondLanguageName_internal == freezed
          ? _value.secondLanguageName_internal
          : secondLanguageName_internal // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$SubareaCopyWith<$Res> implements $SubareaCopyWith<$Res> {
  factory _$SubareaCopyWith(_Subarea value, $Res Function(_Subarea) then) =
      __$SubareaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sektor_ID') int id,
      @DoubleConverter() @JsonKey(name: 'sektornr') double? nr,
      @JsonKey(name: 'sektorname_d') String name_internal,
      @JsonKey(name: 'sektorname_cz') String secondLanguageName_internal,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
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
    Object? id = freezed,
    Object? nr = freezed,
    Object? name_internal = freezed,
    Object? secondLanguageName_internal = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Subarea(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nr == freezed
          ? _value.nr
          : nr // ignore: cast_nullable_to_non_nullable
              as double?,
      name_internal == freezed
          ? _value.name_internal
          : name_internal // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageName_internal == freezed
          ? _value.secondLanguageName_internal
          : secondLanguageName_internal // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Subarea extends _Subarea {
  _$_Subarea(
      @JsonKey(name: 'sektor_ID') this.id,
      @DoubleConverter() @JsonKey(name: 'sektornr') this.nr,
      @JsonKey(name: 'sektorname_d') this.name_internal,
      @JsonKey(name: 'sektorname_cz') this.secondLanguageName_internal,
      @JsonKey(name: 'komment_count') this.commentCount,
      @JsonKey(name: 'insert_timestamp') this.lastUpdated)
      : super._();

  factory _$_Subarea.fromJson(Map<String, dynamic> json) =>
      _$_$_SubareaFromJson(json);

  @override
  @JsonKey(name: 'sektor_ID')
  final int id;
  @override // @JsonKey(name: 'gebietid') int gebietid,
  @DoubleConverter()
  @JsonKey(name: 'sektornr')
  final double? nr;
  @override
  @JsonKey(name: 'sektorname_d')
  final String name_internal;
  @override
  @JsonKey(name: 'sektorname_cz')
  final String secondLanguageName_internal;
  @override // @JsonKey(name: 'gipfel_count') int childCount,
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Subarea(id: $id, nr: $nr, name_internal: $name_internal, secondLanguageName_internal: $secondLanguageName_internal, commentCount: $commentCount, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subarea &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nr, nr) ||
                const DeepCollectionEquality().equals(other.nr, nr)) &&
            (identical(other.name_internal, name_internal) ||
                const DeepCollectionEquality()
                    .equals(other.name_internal, name_internal)) &&
            (identical(other.secondLanguageName_internal,
                    secondLanguageName_internal) ||
                const DeepCollectionEquality().equals(
                    other.secondLanguageName_internal,
                    secondLanguageName_internal)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nr) ^
      const DeepCollectionEquality().hash(name_internal) ^
      const DeepCollectionEquality().hash(secondLanguageName_internal) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$SubareaCopyWith<_Subarea> get copyWith =>
      __$SubareaCopyWithImpl<_Subarea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubareaToJson(this);
  }
}

abstract class _Subarea extends Subarea {
  factory _Subarea(
      @JsonKey(name: 'sektor_ID') int id,
      @DoubleConverter() @JsonKey(name: 'sektornr') double? nr,
      @JsonKey(name: 'sektorname_d') String name_internal,
      @JsonKey(name: 'sektorname_cz') String secondLanguageName_internal,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) = _$_Subarea;
  _Subarea._() : super._();

  factory _Subarea.fromJson(Map<String, dynamic> json) = _$_Subarea.fromJson;

  @override
  @JsonKey(name: 'sektor_ID')
  int get id => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'gebietid') int gebietid,
  @DoubleConverter()
  @JsonKey(name: 'sektornr')
  double? get nr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sektorname_d')
  String get name_internal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sektorname_cz')
  String get secondLanguageName_internal => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'gipfel_count') int childCount,
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubareaCopyWith<_Subarea> get copyWith =>
      throw _privateConstructorUsedError;
}
