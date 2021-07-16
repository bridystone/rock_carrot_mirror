// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
class _$AreaTearOff {
  const _$AreaTearOff();

  _Area call(
      @JsonKey(name: 'gebiet_ID') int id,
      @JsonKey(name: 'gebiet') String name,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) {
    return _Area(
      id,
      name,
      commentCount,
      lastUpdated,
    );
  }

  Area fromJson(Map<String, Object> json) {
    return Area.fromJson(json);
  }
}

/// @nodoc
const $Area = _$AreaTearOff();

/// @nodoc
mixin _$Area {
  @JsonKey(name: 'gebiet_ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'gebiet')
  String get name =>
      throw _privateConstructorUsedError; //@JsonKey(name: 'land') String land,
//@JsonKey(name: 'sprache2') String sprache2,
//@JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
//@JsonKey(name: 'schwskala') String schwskala,
//@JsonKey(name: 'subarea_count') int childCount,
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'gebiet_ID') int id,
      @JsonKey(name: 'gebiet') String name,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  final Area _value;
  // ignore: unused_field
  final $Res Function(Area) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$AreaCopyWith(_Area value, $Res Function(_Area) then) =
      __$AreaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'gebiet_ID') int id,
      @JsonKey(name: 'gebiet') String name,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class __$AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res>
    implements _$AreaCopyWith<$Res> {
  __$AreaCopyWithImpl(_Area _value, $Res Function(_Area) _then)
      : super(_value, (v) => _then(v as _Area));

  @override
  _Area get _value => super._value as _Area;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Area(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_Area implements _Area {
  _$_Area(
      @JsonKey(name: 'gebiet_ID') this.id,
      @JsonKey(name: 'gebiet') this.name,
      @JsonKey(name: 'komment_count') this.commentCount,
      @JsonKey(name: 'insert_timestamp') this.lastUpdated);

  factory _$_Area.fromJson(Map<String, dynamic> json) =>
      _$_$_AreaFromJson(json);

  @override
  @JsonKey(name: 'gebiet_ID')
  final int id;
  @override
  @JsonKey(name: 'gebiet')
  final String name;
  @override //@JsonKey(name: 'land') String land,
//@JsonKey(name: 'sprache2') String sprache2,
//@JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
//@JsonKey(name: 'schwskala') String schwskala,
//@JsonKey(name: 'subarea_count') int childCount,
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Area(id: $id, name: $name, commentCount: $commentCount, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Area &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$AreaCopyWith<_Area> get copyWith =>
      __$AreaCopyWithImpl<_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AreaToJson(this);
  }
}

abstract class _Area implements Area {
  factory _Area(
      @JsonKey(name: 'gebiet_ID') int id,
      @JsonKey(name: 'gebiet') String name,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  @JsonKey(name: 'gebiet_ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gebiet')
  String get name => throw _privateConstructorUsedError;
  @override //@JsonKey(name: 'land') String land,
//@JsonKey(name: 'sprache2') String sprache2,
//@JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
//@JsonKey(name: 'schwskala') String schwskala,
//@JsonKey(name: 'subarea_count') int childCount,
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AreaCopyWith<_Area> get copyWith => throw _privateConstructorUsedError;
}
