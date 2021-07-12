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
      @JsonKey(name: 'gebiet_ID') int gebietid,
      @JsonKey(name: 'gebiet') String gebiet,
      @JsonKey(name: 'land') String land,
      @JsonKey(name: 'sprache2') String sprache2,
      @JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
      @JsonKey(name: 'schwskala') String schwskala,
      @JsonKey(name: 'subarea_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) {
    return _Area(
      gebietid,
      gebiet,
      land,
      sprache2,
      gdefaultanzeige,
      schwskala,
      childCount,
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
  int get gebietid => throw _privateConstructorUsedError;
  @JsonKey(name: 'gebiet')
  String get gebiet => throw _privateConstructorUsedError;
  @JsonKey(name: 'land')
  String get land => throw _privateConstructorUsedError;
  @JsonKey(name: 'sprache2')
  String get sprache2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'gdefaultanzeige')
  String get gdefaultanzeige => throw _privateConstructorUsedError;
  @JsonKey(name: 'schwskala')
  String get schwskala => throw _privateConstructorUsedError;
  @JsonKey(name: 'subarea_count')
  int get childCount => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'gebiet_ID') int gebietid,
      @JsonKey(name: 'gebiet') String gebiet,
      @JsonKey(name: 'land') String land,
      @JsonKey(name: 'sprache2') String sprache2,
      @JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
      @JsonKey(name: 'schwskala') String schwskala,
      @JsonKey(name: 'subarea_count') int childCount,
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
    Object? gebietid = freezed,
    Object? gebiet = freezed,
    Object? land = freezed,
    Object? sprache2 = freezed,
    Object? gdefaultanzeige = freezed,
    Object? schwskala = freezed,
    Object? childCount = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      gebietid: gebietid == freezed
          ? _value.gebietid
          : gebietid // ignore: cast_nullable_to_non_nullable
              as int,
      gebiet: gebiet == freezed
          ? _value.gebiet
          : gebiet // ignore: cast_nullable_to_non_nullable
              as String,
      land: land == freezed
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as String,
      sprache2: sprache2 == freezed
          ? _value.sprache2
          : sprache2 // ignore: cast_nullable_to_non_nullable
              as String,
      gdefaultanzeige: gdefaultanzeige == freezed
          ? _value.gdefaultanzeige
          : gdefaultanzeige // ignore: cast_nullable_to_non_nullable
              as String,
      schwskala: schwskala == freezed
          ? _value.schwskala
          : schwskala // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$AreaCopyWith(_Area value, $Res Function(_Area) then) =
      __$AreaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'gebiet_ID') int gebietid,
      @JsonKey(name: 'gebiet') String gebiet,
      @JsonKey(name: 'land') String land,
      @JsonKey(name: 'sprache2') String sprache2,
      @JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
      @JsonKey(name: 'schwskala') String schwskala,
      @JsonKey(name: 'subarea_count') int childCount,
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
    Object? gebietid = freezed,
    Object? gebiet = freezed,
    Object? land = freezed,
    Object? sprache2 = freezed,
    Object? gdefaultanzeige = freezed,
    Object? schwskala = freezed,
    Object? childCount = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Area(
      gebietid == freezed
          ? _value.gebietid
          : gebietid // ignore: cast_nullable_to_non_nullable
              as int,
      gebiet == freezed
          ? _value.gebiet
          : gebiet // ignore: cast_nullable_to_non_nullable
              as String,
      land == freezed
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as String,
      sprache2 == freezed
          ? _value.sprache2
          : sprache2 // ignore: cast_nullable_to_non_nullable
              as String,
      gdefaultanzeige == freezed
          ? _value.gdefaultanzeige
          : gdefaultanzeige // ignore: cast_nullable_to_non_nullable
              as String,
      schwskala == freezed
          ? _value.schwskala
          : schwskala // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Area implements _Area {
  _$_Area(
      @JsonKey(name: 'gebiet_ID') this.gebietid,
      @JsonKey(name: 'gebiet') this.gebiet,
      @JsonKey(name: 'land') this.land,
      @JsonKey(name: 'sprache2') this.sprache2,
      @JsonKey(name: 'gdefaultanzeige') this.gdefaultanzeige,
      @JsonKey(name: 'schwskala') this.schwskala,
      @JsonKey(name: 'subarea_count') this.childCount,
      @JsonKey(name: 'komment_count') this.commentCount,
      @JsonKey(name: 'insert_timestamp') this.lastUpdated);

  factory _$_Area.fromJson(Map<String, dynamic> json) =>
      _$_$_AreaFromJson(json);

  @override
  @JsonKey(name: 'gebiet_ID')
  final int gebietid;
  @override
  @JsonKey(name: 'gebiet')
  final String gebiet;
  @override
  @JsonKey(name: 'land')
  final String land;
  @override
  @JsonKey(name: 'sprache2')
  final String sprache2;
  @override
  @JsonKey(name: 'gdefaultanzeige')
  final String gdefaultanzeige;
  @override
  @JsonKey(name: 'schwskala')
  final String schwskala;
  @override
  @JsonKey(name: 'subarea_count')
  final int childCount;
  @override
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Area(gebietid: $gebietid, gebiet: $gebiet, land: $land, sprache2: $sprache2, gdefaultanzeige: $gdefaultanzeige, schwskala: $schwskala, childCount: $childCount, commentCount: $commentCount, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Area &&
            (identical(other.gebietid, gebietid) ||
                const DeepCollectionEquality()
                    .equals(other.gebietid, gebietid)) &&
            (identical(other.gebiet, gebiet) ||
                const DeepCollectionEquality().equals(other.gebiet, gebiet)) &&
            (identical(other.land, land) ||
                const DeepCollectionEquality().equals(other.land, land)) &&
            (identical(other.sprache2, sprache2) ||
                const DeepCollectionEquality()
                    .equals(other.sprache2, sprache2)) &&
            (identical(other.gdefaultanzeige, gdefaultanzeige) ||
                const DeepCollectionEquality()
                    .equals(other.gdefaultanzeige, gdefaultanzeige)) &&
            (identical(other.schwskala, schwskala) ||
                const DeepCollectionEquality()
                    .equals(other.schwskala, schwskala)) &&
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
      const DeepCollectionEquality().hash(gebietid) ^
      const DeepCollectionEquality().hash(gebiet) ^
      const DeepCollectionEquality().hash(land) ^
      const DeepCollectionEquality().hash(sprache2) ^
      const DeepCollectionEquality().hash(gdefaultanzeige) ^
      const DeepCollectionEquality().hash(schwskala) ^
      const DeepCollectionEquality().hash(childCount) ^
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
      @JsonKey(name: 'gebiet_ID') int gebietid,
      @JsonKey(name: 'gebiet') String gebiet,
      @JsonKey(name: 'land') String land,
      @JsonKey(name: 'sprache2') String sprache2,
      @JsonKey(name: 'gdefaultanzeige') String gdefaultanzeige,
      @JsonKey(name: 'schwskala') String schwskala,
      @JsonKey(name: 'subarea_count') int childCount,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  @JsonKey(name: 'gebiet_ID')
  int get gebietid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gebiet')
  String get gebiet => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'land')
  String get land => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sprache2')
  String get sprache2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gdefaultanzeige')
  String get gdefaultanzeige => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'schwskala')
  String get schwskala => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'subarea_count')
  int get childCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AreaCopyWith<_Area> get copyWith => throw _privateConstructorUsedError;
}
