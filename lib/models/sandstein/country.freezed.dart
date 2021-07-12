// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      @JsonKey(name: 'land') String land,
      @JsonKey(name: 'ISO3166') String iso3166,
      @JsonKey(name: 'KFZ') String kfz,
      @JsonKey(name: 'count') int childCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) {
    return _Country(
      land,
      iso3166,
      kfz,
      childCount,
      lastUpdated,
    );
  }

  Country fromJson(Map<String, Object> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  @JsonKey(name: 'land')
  String get land => throw _privateConstructorUsedError;
  @JsonKey(name: 'ISO3166')
  String get iso3166 => throw _privateConstructorUsedError;
  @JsonKey(name: 'KFZ')
  String get kfz => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get childCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'land') String land,
      @JsonKey(name: 'ISO3166') String iso3166,
      @JsonKey(name: 'KFZ') String kfz,
      @JsonKey(name: 'count') int childCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? land = freezed,
    Object? iso3166 = freezed,
    Object? kfz = freezed,
    Object? childCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      land: land == freezed
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as String,
      iso3166: iso3166 == freezed
          ? _value.iso3166
          : iso3166 // ignore: cast_nullable_to_non_nullable
              as String,
      kfz: kfz == freezed
          ? _value.kfz
          : kfz // ignore: cast_nullable_to_non_nullable
              as String,
      childCount: childCount == freezed
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'land') String land,
      @JsonKey(name: 'ISO3166') String iso3166,
      @JsonKey(name: 'KFZ') String kfz,
      @JsonKey(name: 'count') int childCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? land = freezed,
    Object? iso3166 = freezed,
    Object? kfz = freezed,
    Object? childCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Country(
      land == freezed
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as String,
      iso3166 == freezed
          ? _value.iso3166
          : iso3166 // ignore: cast_nullable_to_non_nullable
              as String,
      kfz == freezed
          ? _value.kfz
          : kfz // ignore: cast_nullable_to_non_nullable
              as String,
      childCount == freezed
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
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
class _$_Country implements _Country {
  _$_Country(
      @JsonKey(name: 'land') this.land,
      @JsonKey(name: 'ISO3166') this.iso3166,
      @JsonKey(name: 'KFZ') this.kfz,
      @JsonKey(name: 'count') this.childCount,
      @JsonKey(name: 'insert_timestamp') this.lastUpdated);

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryFromJson(json);

  @override
  @JsonKey(name: 'land')
  final String land;
  @override
  @JsonKey(name: 'ISO3166')
  final String iso3166;
  @override
  @JsonKey(name: 'KFZ')
  final String kfz;
  @override
  @JsonKey(name: 'count')
  final int childCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Country(land: $land, iso3166: $iso3166, kfz: $kfz, childCount: $childCount, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.land, land) ||
                const DeepCollectionEquality().equals(other.land, land)) &&
            (identical(other.iso3166, iso3166) ||
                const DeepCollectionEquality()
                    .equals(other.iso3166, iso3166)) &&
            (identical(other.kfz, kfz) ||
                const DeepCollectionEquality().equals(other.kfz, kfz)) &&
            (identical(other.childCount, childCount) ||
                const DeepCollectionEquality()
                    .equals(other.childCount, childCount)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(land) ^
      const DeepCollectionEquality().hash(iso3166) ^
      const DeepCollectionEquality().hash(kfz) ^
      const DeepCollectionEquality().hash(childCount) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  factory _Country(
      @JsonKey(name: 'land') String land,
      @JsonKey(name: 'ISO3166') String iso3166,
      @JsonKey(name: 'KFZ') String kfz,
      @JsonKey(name: 'count') int childCount,
      @JsonKey(name: 'insert_timestamp') DateTime lastUpdated) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  @JsonKey(name: 'land')
  String get land => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ISO3166')
  String get iso3166 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'KFZ')
  String get kfz => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'count')
  int get childCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
