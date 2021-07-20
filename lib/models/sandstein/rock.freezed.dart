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
      @JsonKey(name: 'gipfel_ID') int id,
      @DoubleConverter() @JsonKey(name: 'gipfelnr') double? nr,
      @JsonKey(name: 'gipfelname_d') String name_internal,
      @JsonKey(name: 'gipfelname_cz') String secondLanguageName_internal,
      @RockStateConverter() @JsonKey(name: 'status') RockState state,
      @RockTypeConverter() @JsonKey(name: 'typ') RockType type,
      @DoubleConverter() @JsonKey(name: 'vgrd') double? longitude,
      @DoubleConverter() @JsonKey(name: 'ngrd') double? latitude,
      @IntConverter() @JsonKey(name: 'schartenhoehe') int? upperHeight,
      @IntConverter() @JsonKey(name: 'talhoehe') int? lowerHeight,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
      @JsonKey(name: 'tt_insert_timestamp') DateTime? lastUpdatedTT) {
    return _Rock(
      id,
      nr,
      name_internal,
      secondLanguageName_internal,
      state,
      type,
      longitude,
      latitude,
      upperHeight,
      lowerHeight,
      commentCount,
      lastUpdated,
      lastUpdatedTT,
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
  int get id => throw _privateConstructorUsedError;
  @DoubleConverter()
  @JsonKey(name: 'gipfelnr')
  double? get nr => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfelname_d')
  String get name_internal => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfelname_cz')
  String get secondLanguageName_internal => throw _privateConstructorUsedError;
  @RockStateConverter()
  @JsonKey(name: 'status')
  RockState get state => throw _privateConstructorUsedError;
  @RockTypeConverter()
  @JsonKey(name: 'typ')
  RockType get type => throw _privateConstructorUsedError;
  @DoubleConverter()
  @JsonKey(name: 'vgrd')
  double? get longitude => throw _privateConstructorUsedError;
  @DoubleConverter()
  @JsonKey(name: 'ngrd')
  double? get latitude =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'posfehler') int posfehler,
  @IntConverter()
  @JsonKey(name: 'schartenhoehe')
  int? get upperHeight => throw _privateConstructorUsedError;
  @IntConverter()
  @JsonKey(name: 'talhoehe')
  int? get lowerHeight =>
      throw _privateConstructorUsedError; //@JsonKey(name: 'sektorid') int sektorid,
//@JsonKey(name: 'wege_count') int childCount,
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'tt_insert_timestamp')
  DateTime? get lastUpdatedTT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RockCopyWith<Rock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockCopyWith<$Res> {
  factory $RockCopyWith(Rock value, $Res Function(Rock) then) =
      _$RockCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'gipfel_ID') int id,
      @DoubleConverter() @JsonKey(name: 'gipfelnr') double? nr,
      @JsonKey(name: 'gipfelname_d') String name_internal,
      @JsonKey(name: 'gipfelname_cz') String secondLanguageName_internal,
      @RockStateConverter() @JsonKey(name: 'status') RockState state,
      @RockTypeConverter() @JsonKey(name: 'typ') RockType type,
      @DoubleConverter() @JsonKey(name: 'vgrd') double? longitude,
      @DoubleConverter() @JsonKey(name: 'ngrd') double? latitude,
      @IntConverter() @JsonKey(name: 'schartenhoehe') int? upperHeight,
      @IntConverter() @JsonKey(name: 'talhoehe') int? lowerHeight,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
      @JsonKey(name: 'tt_insert_timestamp') DateTime? lastUpdatedTT});
}

/// @nodoc
class _$RockCopyWithImpl<$Res> implements $RockCopyWith<$Res> {
  _$RockCopyWithImpl(this._value, this._then);

  final Rock _value;
  // ignore: unused_field
  final $Res Function(Rock) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nr = freezed,
    Object? name_internal = freezed,
    Object? secondLanguageName_internal = freezed,
    Object? state = freezed,
    Object? type = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? upperHeight = freezed,
    Object? lowerHeight = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
    Object? lastUpdatedTT = freezed,
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
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RockState,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RockType,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      upperHeight: upperHeight == freezed
          ? _value.upperHeight
          : upperHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      lowerHeight: lowerHeight == freezed
          ? _value.lowerHeight
          : lowerHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdatedTT: lastUpdatedTT == freezed
          ? _value.lastUpdatedTT
          : lastUpdatedTT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$RockCopyWith<$Res> implements $RockCopyWith<$Res> {
  factory _$RockCopyWith(_Rock value, $Res Function(_Rock) then) =
      __$RockCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'gipfel_ID') int id,
      @DoubleConverter() @JsonKey(name: 'gipfelnr') double? nr,
      @JsonKey(name: 'gipfelname_d') String name_internal,
      @JsonKey(name: 'gipfelname_cz') String secondLanguageName_internal,
      @RockStateConverter() @JsonKey(name: 'status') RockState state,
      @RockTypeConverter() @JsonKey(name: 'typ') RockType type,
      @DoubleConverter() @JsonKey(name: 'vgrd') double? longitude,
      @DoubleConverter() @JsonKey(name: 'ngrd') double? latitude,
      @IntConverter() @JsonKey(name: 'schartenhoehe') int? upperHeight,
      @IntConverter() @JsonKey(name: 'talhoehe') int? lowerHeight,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
      @JsonKey(name: 'tt_insert_timestamp') DateTime? lastUpdatedTT});
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
    Object? id = freezed,
    Object? nr = freezed,
    Object? name_internal = freezed,
    Object? secondLanguageName_internal = freezed,
    Object? state = freezed,
    Object? type = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? upperHeight = freezed,
    Object? lowerHeight = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
    Object? lastUpdatedTT = freezed,
  }) {
    return _then(_Rock(
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
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RockState,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RockType,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      upperHeight == freezed
          ? _value.upperHeight
          : upperHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      lowerHeight == freezed
          ? _value.lowerHeight
          : lowerHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdatedTT == freezed
          ? _value.lastUpdatedTT
          : lastUpdatedTT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rock extends _Rock {
  _$_Rock(
      @JsonKey(name: 'gipfel_ID') this.id,
      @DoubleConverter() @JsonKey(name: 'gipfelnr') this.nr,
      @JsonKey(name: 'gipfelname_d') this.name_internal,
      @JsonKey(name: 'gipfelname_cz') this.secondLanguageName_internal,
      @RockStateConverter() @JsonKey(name: 'status') this.state,
      @RockTypeConverter() @JsonKey(name: 'typ') this.type,
      @DoubleConverter() @JsonKey(name: 'vgrd') this.longitude,
      @DoubleConverter() @JsonKey(name: 'ngrd') this.latitude,
      @IntConverter() @JsonKey(name: 'schartenhoehe') this.upperHeight,
      @IntConverter() @JsonKey(name: 'talhoehe') this.lowerHeight,
      @JsonKey(name: 'komment_count') this.commentCount,
      @JsonKey(name: 'insert_timestamp') this.lastUpdated,
      @JsonKey(name: 'tt_insert_timestamp') this.lastUpdatedTT)
      : super._();

  factory _$_Rock.fromJson(Map<String, dynamic> json) =>
      _$_$_RockFromJson(json);

  @override
  @JsonKey(name: 'gipfel_ID')
  final int id;
  @override
  @DoubleConverter()
  @JsonKey(name: 'gipfelnr')
  final double? nr;
  @override
  @JsonKey(name: 'gipfelname_d')
  final String name_internal;
  @override
  @JsonKey(name: 'gipfelname_cz')
  final String secondLanguageName_internal;
  @override
  @RockStateConverter()
  @JsonKey(name: 'status')
  final RockState state;
  @override
  @RockTypeConverter()
  @JsonKey(name: 'typ')
  final RockType type;
  @override
  @DoubleConverter()
  @JsonKey(name: 'vgrd')
  final double? longitude;
  @override
  @DoubleConverter()
  @JsonKey(name: 'ngrd')
  final double? latitude;
  @override // @JsonKey(name: 'posfehler') int posfehler,
  @IntConverter()
  @JsonKey(name: 'schartenhoehe')
  final int? upperHeight;
  @override
  @IntConverter()
  @JsonKey(name: 'talhoehe')
  final int? lowerHeight;
  @override //@JsonKey(name: 'sektorid') int sektorid,
//@JsonKey(name: 'wege_count') int childCount,
  @JsonKey(name: 'komment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'tt_insert_timestamp')
  final DateTime? lastUpdatedTT;

  @override
  String toString() {
    return 'Rock(id: $id, nr: $nr, name_internal: $name_internal, secondLanguageName_internal: $secondLanguageName_internal, state: $state, type: $type, longitude: $longitude, latitude: $latitude, upperHeight: $upperHeight, lowerHeight: $lowerHeight, commentCount: $commentCount, lastUpdated: $lastUpdated, lastUpdatedTT: $lastUpdatedTT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rock &&
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
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.upperHeight, upperHeight) ||
                const DeepCollectionEquality()
                    .equals(other.upperHeight, upperHeight)) &&
            (identical(other.lowerHeight, lowerHeight) ||
                const DeepCollectionEquality()
                    .equals(other.lowerHeight, lowerHeight)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)) &&
            (identical(other.lastUpdatedTT, lastUpdatedTT) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdatedTT, lastUpdatedTT)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nr) ^
      const DeepCollectionEquality().hash(name_internal) ^
      const DeepCollectionEquality().hash(secondLanguageName_internal) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(upperHeight) ^
      const DeepCollectionEquality().hash(lowerHeight) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(lastUpdatedTT);

  @JsonKey(ignore: true)
  @override
  _$RockCopyWith<_Rock> get copyWith =>
      __$RockCopyWithImpl<_Rock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RockToJson(this);
  }
}

abstract class _Rock extends Rock {
  factory _Rock(
      @JsonKey(name: 'gipfel_ID') int id,
      @DoubleConverter() @JsonKey(name: 'gipfelnr') double? nr,
      @JsonKey(name: 'gipfelname_d') String name_internal,
      @JsonKey(name: 'gipfelname_cz') String secondLanguageName_internal,
      @RockStateConverter() @JsonKey(name: 'status') RockState state,
      @RockTypeConverter() @JsonKey(name: 'typ') RockType type,
      @DoubleConverter() @JsonKey(name: 'vgrd') double? longitude,
      @DoubleConverter() @JsonKey(name: 'ngrd') double? latitude,
      @IntConverter() @JsonKey(name: 'schartenhoehe') int? upperHeight,
      @IntConverter() @JsonKey(name: 'talhoehe') int? lowerHeight,
      @JsonKey(name: 'komment_count') int commentCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated,
      @JsonKey(name: 'tt_insert_timestamp') DateTime? lastUpdatedTT) = _$_Rock;
  _Rock._() : super._();

  factory _Rock.fromJson(Map<String, dynamic> json) = _$_Rock.fromJson;

  @override
  @JsonKey(name: 'gipfel_ID')
  int get id => throw _privateConstructorUsedError;
  @override
  @DoubleConverter()
  @JsonKey(name: 'gipfelnr')
  double? get nr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfelname_d')
  String get name_internal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfelname_cz')
  String get secondLanguageName_internal => throw _privateConstructorUsedError;
  @override
  @RockStateConverter()
  @JsonKey(name: 'status')
  RockState get state => throw _privateConstructorUsedError;
  @override
  @RockTypeConverter()
  @JsonKey(name: 'typ')
  RockType get type => throw _privateConstructorUsedError;
  @override
  @DoubleConverter()
  @JsonKey(name: 'vgrd')
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @DoubleConverter()
  @JsonKey(name: 'ngrd')
  double? get latitude => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'posfehler') int posfehler,
  @IntConverter()
  @JsonKey(name: 'schartenhoehe')
  int? get upperHeight => throw _privateConstructorUsedError;
  @override
  @IntConverter()
  @JsonKey(name: 'talhoehe')
  int? get lowerHeight => throw _privateConstructorUsedError;
  @override //@JsonKey(name: 'sektorid') int sektorid,
//@JsonKey(name: 'wege_count') int childCount,
  @JsonKey(name: 'komment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tt_insert_timestamp')
  DateTime? get lastUpdatedTT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RockCopyWith<_Rock> get copyWith => throw _privateConstructorUsedError;
}
