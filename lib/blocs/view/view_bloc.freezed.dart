// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewEventTearOff {
  const _$ViewEventTearOff();

  _ToCountries toCountries() {
    return const _ToCountries();
  }

  _ToAreas toAreas(Country? country) {
    return _ToAreas(
      country,
    );
  }

  _ToSubareas toSubareas(Area? area) {
    return _ToSubareas(
      area,
    );
  }

  _ToRocks toRocks(Subarea? subarea) {
    return _ToRocks(
      subarea,
    );
  }

  _ToRoutes toRoutes(Rock? rock) {
    return _ToRoutes(
      rock,
    );
  }
}

/// @nodoc
const $ViewEvent = _$ViewEventTearOff();

/// @nodoc
mixin _$ViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(Country? country) toAreas,
    required TResult Function(Area? area) toSubareas,
    required TResult Function(Subarea? subarea) toRocks,
    required TResult Function(Rock? rock) toRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(Country? country)? toAreas,
    TResult Function(Area? area)? toSubareas,
    TResult Function(Subarea? subarea)? toRocks,
    TResult Function(Rock? rock)? toRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToCountries value) toCountries,
    required TResult Function(_ToAreas value) toAreas,
    required TResult Function(_ToSubareas value) toSubareas,
    required TResult Function(_ToRocks value) toRocks,
    required TResult Function(_ToRoutes value) toRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToCountries value)? toCountries,
    TResult Function(_ToAreas value)? toAreas,
    TResult Function(_ToSubareas value)? toSubareas,
    TResult Function(_ToRocks value)? toRocks,
    TResult Function(_ToRoutes value)? toRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewEventCopyWith<$Res> {
  factory $ViewEventCopyWith(ViewEvent value, $Res Function(ViewEvent) then) =
      _$ViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewEventCopyWithImpl<$Res> implements $ViewEventCopyWith<$Res> {
  _$ViewEventCopyWithImpl(this._value, this._then);

  final ViewEvent _value;
  // ignore: unused_field
  final $Res Function(ViewEvent) _then;
}

/// @nodoc
abstract class _$ToCountriesCopyWith<$Res> {
  factory _$ToCountriesCopyWith(
          _ToCountries value, $Res Function(_ToCountries) then) =
      __$ToCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToCountriesCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ToCountriesCopyWith<$Res> {
  __$ToCountriesCopyWithImpl(
      _ToCountries _value, $Res Function(_ToCountries) _then)
      : super(_value, (v) => _then(v as _ToCountries));

  @override
  _ToCountries get _value => super._value as _ToCountries;
}

/// @nodoc

class _$_ToCountries implements _ToCountries {
  const _$_ToCountries();

  @override
  String toString() {
    return 'ViewEvent.toCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(Country? country) toAreas,
    required TResult Function(Area? area) toSubareas,
    required TResult Function(Subarea? subarea) toRocks,
    required TResult Function(Rock? rock) toRoutes,
  }) {
    return toCountries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(Country? country)? toAreas,
    TResult Function(Area? area)? toSubareas,
    TResult Function(Subarea? subarea)? toRocks,
    TResult Function(Rock? rock)? toRoutes,
    required TResult orElse(),
  }) {
    if (toCountries != null) {
      return toCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToCountries value) toCountries,
    required TResult Function(_ToAreas value) toAreas,
    required TResult Function(_ToSubareas value) toSubareas,
    required TResult Function(_ToRocks value) toRocks,
    required TResult Function(_ToRoutes value) toRoutes,
  }) {
    return toCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToCountries value)? toCountries,
    TResult Function(_ToAreas value)? toAreas,
    TResult Function(_ToSubareas value)? toSubareas,
    TResult Function(_ToRocks value)? toRocks,
    TResult Function(_ToRoutes value)? toRoutes,
    required TResult orElse(),
  }) {
    if (toCountries != null) {
      return toCountries(this);
    }
    return orElse();
  }
}

abstract class _ToCountries implements ViewEvent {
  const factory _ToCountries() = _$_ToCountries;
}

/// @nodoc
abstract class _$ToAreasCopyWith<$Res> {
  factory _$ToAreasCopyWith(_ToAreas value, $Res Function(_ToAreas) then) =
      __$ToAreasCopyWithImpl<$Res>;
  $Res call({Country? country});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$ToAreasCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ToAreasCopyWith<$Res> {
  __$ToAreasCopyWithImpl(_ToAreas _value, $Res Function(_ToAreas) _then)
      : super(_value, (v) => _then(v as _ToAreas));

  @override
  _ToAreas get _value => super._value as _ToAreas;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_ToAreas(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }

  @override
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_ToAreas implements _ToAreas {
  const _$_ToAreas(this.country);

  @override
  final Country? country;

  @override
  String toString() {
    return 'ViewEvent.toAreas(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToAreas &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$ToAreasCopyWith<_ToAreas> get copyWith =>
      __$ToAreasCopyWithImpl<_ToAreas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(Country? country) toAreas,
    required TResult Function(Area? area) toSubareas,
    required TResult Function(Subarea? subarea) toRocks,
    required TResult Function(Rock? rock) toRoutes,
  }) {
    return toAreas(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(Country? country)? toAreas,
    TResult Function(Area? area)? toSubareas,
    TResult Function(Subarea? subarea)? toRocks,
    TResult Function(Rock? rock)? toRoutes,
    required TResult orElse(),
  }) {
    if (toAreas != null) {
      return toAreas(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToCountries value) toCountries,
    required TResult Function(_ToAreas value) toAreas,
    required TResult Function(_ToSubareas value) toSubareas,
    required TResult Function(_ToRocks value) toRocks,
    required TResult Function(_ToRoutes value) toRoutes,
  }) {
    return toAreas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToCountries value)? toCountries,
    TResult Function(_ToAreas value)? toAreas,
    TResult Function(_ToSubareas value)? toSubareas,
    TResult Function(_ToRocks value)? toRocks,
    TResult Function(_ToRoutes value)? toRoutes,
    required TResult orElse(),
  }) {
    if (toAreas != null) {
      return toAreas(this);
    }
    return orElse();
  }
}

abstract class _ToAreas implements ViewEvent {
  const factory _ToAreas(Country? country) = _$_ToAreas;

  Country? get country => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToAreasCopyWith<_ToAreas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToSubareasCopyWith<$Res> {
  factory _$ToSubareasCopyWith(
          _ToSubareas value, $Res Function(_ToSubareas) then) =
      __$ToSubareasCopyWithImpl<$Res>;
  $Res call({Area? area});

  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$ToSubareasCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ToSubareasCopyWith<$Res> {
  __$ToSubareasCopyWithImpl(
      _ToSubareas _value, $Res Function(_ToSubareas) _then)
      : super(_value, (v) => _then(v as _ToSubareas));

  @override
  _ToSubareas get _value => super._value as _ToSubareas;

  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_ToSubareas(
      area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
    ));
  }

  @override
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc

class _$_ToSubareas implements _ToSubareas {
  const _$_ToSubareas(this.area);

  @override
  final Area? area;

  @override
  String toString() {
    return 'ViewEvent.toSubareas(area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToSubareas &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(area);

  @JsonKey(ignore: true)
  @override
  _$ToSubareasCopyWith<_ToSubareas> get copyWith =>
      __$ToSubareasCopyWithImpl<_ToSubareas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(Country? country) toAreas,
    required TResult Function(Area? area) toSubareas,
    required TResult Function(Subarea? subarea) toRocks,
    required TResult Function(Rock? rock) toRoutes,
  }) {
    return toSubareas(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(Country? country)? toAreas,
    TResult Function(Area? area)? toSubareas,
    TResult Function(Subarea? subarea)? toRocks,
    TResult Function(Rock? rock)? toRoutes,
    required TResult orElse(),
  }) {
    if (toSubareas != null) {
      return toSubareas(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToCountries value) toCountries,
    required TResult Function(_ToAreas value) toAreas,
    required TResult Function(_ToSubareas value) toSubareas,
    required TResult Function(_ToRocks value) toRocks,
    required TResult Function(_ToRoutes value) toRoutes,
  }) {
    return toSubareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToCountries value)? toCountries,
    TResult Function(_ToAreas value)? toAreas,
    TResult Function(_ToSubareas value)? toSubareas,
    TResult Function(_ToRocks value)? toRocks,
    TResult Function(_ToRoutes value)? toRoutes,
    required TResult orElse(),
  }) {
    if (toSubareas != null) {
      return toSubareas(this);
    }
    return orElse();
  }
}

abstract class _ToSubareas implements ViewEvent {
  const factory _ToSubareas(Area? area) = _$_ToSubareas;

  Area? get area => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToSubareasCopyWith<_ToSubareas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToRocksCopyWith<$Res> {
  factory _$ToRocksCopyWith(_ToRocks value, $Res Function(_ToRocks) then) =
      __$ToRocksCopyWithImpl<$Res>;
  $Res call({Subarea? subarea});

  $SubareaCopyWith<$Res>? get subarea;
}

/// @nodoc
class __$ToRocksCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ToRocksCopyWith<$Res> {
  __$ToRocksCopyWithImpl(_ToRocks _value, $Res Function(_ToRocks) _then)
      : super(_value, (v) => _then(v as _ToRocks));

  @override
  _ToRocks get _value => super._value as _ToRocks;

  @override
  $Res call({
    Object? subarea = freezed,
  }) {
    return _then(_ToRocks(
      subarea == freezed
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as Subarea?,
    ));
  }

  @override
  $SubareaCopyWith<$Res>? get subarea {
    if (_value.subarea == null) {
      return null;
    }

    return $SubareaCopyWith<$Res>(_value.subarea!, (value) {
      return _then(_value.copyWith(subarea: value));
    });
  }
}

/// @nodoc

class _$_ToRocks implements _ToRocks {
  const _$_ToRocks(this.subarea);

  @override
  final Subarea? subarea;

  @override
  String toString() {
    return 'ViewEvent.toRocks(subarea: $subarea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToRocks &&
            (identical(other.subarea, subarea) ||
                const DeepCollectionEquality().equals(other.subarea, subarea)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subarea);

  @JsonKey(ignore: true)
  @override
  _$ToRocksCopyWith<_ToRocks> get copyWith =>
      __$ToRocksCopyWithImpl<_ToRocks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(Country? country) toAreas,
    required TResult Function(Area? area) toSubareas,
    required TResult Function(Subarea? subarea) toRocks,
    required TResult Function(Rock? rock) toRoutes,
  }) {
    return toRocks(subarea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(Country? country)? toAreas,
    TResult Function(Area? area)? toSubareas,
    TResult Function(Subarea? subarea)? toRocks,
    TResult Function(Rock? rock)? toRoutes,
    required TResult orElse(),
  }) {
    if (toRocks != null) {
      return toRocks(subarea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToCountries value) toCountries,
    required TResult Function(_ToAreas value) toAreas,
    required TResult Function(_ToSubareas value) toSubareas,
    required TResult Function(_ToRocks value) toRocks,
    required TResult Function(_ToRoutes value) toRoutes,
  }) {
    return toRocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToCountries value)? toCountries,
    TResult Function(_ToAreas value)? toAreas,
    TResult Function(_ToSubareas value)? toSubareas,
    TResult Function(_ToRocks value)? toRocks,
    TResult Function(_ToRoutes value)? toRoutes,
    required TResult orElse(),
  }) {
    if (toRocks != null) {
      return toRocks(this);
    }
    return orElse();
  }
}

abstract class _ToRocks implements ViewEvent {
  const factory _ToRocks(Subarea? subarea) = _$_ToRocks;

  Subarea? get subarea => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToRocksCopyWith<_ToRocks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToRoutesCopyWith<$Res> {
  factory _$ToRoutesCopyWith(_ToRoutes value, $Res Function(_ToRoutes) then) =
      __$ToRoutesCopyWithImpl<$Res>;
  $Res call({Rock? rock});

  $RockCopyWith<$Res>? get rock;
}

/// @nodoc
class __$ToRoutesCopyWithImpl<$Res> extends _$ViewEventCopyWithImpl<$Res>
    implements _$ToRoutesCopyWith<$Res> {
  __$ToRoutesCopyWithImpl(_ToRoutes _value, $Res Function(_ToRoutes) _then)
      : super(_value, (v) => _then(v as _ToRoutes));

  @override
  _ToRoutes get _value => super._value as _ToRoutes;

  @override
  $Res call({
    Object? rock = freezed,
  }) {
    return _then(_ToRoutes(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Rock?,
    ));
  }

  @override
  $RockCopyWith<$Res>? get rock {
    if (_value.rock == null) {
      return null;
    }

    return $RockCopyWith<$Res>(_value.rock!, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_ToRoutes implements _ToRoutes {
  const _$_ToRoutes(this.rock);

  @override
  final Rock? rock;

  @override
  String toString() {
    return 'ViewEvent.toRoutes(rock: $rock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToRoutes &&
            (identical(other.rock, rock) ||
                const DeepCollectionEquality().equals(other.rock, rock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rock);

  @JsonKey(ignore: true)
  @override
  _$ToRoutesCopyWith<_ToRoutes> get copyWith =>
      __$ToRoutesCopyWithImpl<_ToRoutes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toCountries,
    required TResult Function(Country? country) toAreas,
    required TResult Function(Area? area) toSubareas,
    required TResult Function(Subarea? subarea) toRocks,
    required TResult Function(Rock? rock) toRoutes,
  }) {
    return toRoutes(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toCountries,
    TResult Function(Country? country)? toAreas,
    TResult Function(Area? area)? toSubareas,
    TResult Function(Subarea? subarea)? toRocks,
    TResult Function(Rock? rock)? toRoutes,
    required TResult orElse(),
  }) {
    if (toRoutes != null) {
      return toRoutes(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToCountries value) toCountries,
    required TResult Function(_ToAreas value) toAreas,
    required TResult Function(_ToSubareas value) toSubareas,
    required TResult Function(_ToRocks value) toRocks,
    required TResult Function(_ToRoutes value) toRoutes,
  }) {
    return toRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToCountries value)? toCountries,
    TResult Function(_ToAreas value)? toAreas,
    TResult Function(_ToSubareas value)? toSubareas,
    TResult Function(_ToRocks value)? toRocks,
    TResult Function(_ToRoutes value)? toRoutes,
    required TResult orElse(),
  }) {
    if (toRoutes != null) {
      return toRoutes(this);
    }
    return orElse();
  }
}

abstract class _ToRoutes implements ViewEvent {
  const factory _ToRoutes(Rock? rock) = _$_ToRoutes;

  Rock? get rock => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToRoutesCopyWith<_ToRoutes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewStateTearOff {
  const _$ViewStateTearOff();

  _Countries countries() {
    return const _Countries();
  }

  _Areas areas(Country? country) {
    return _Areas(
      country,
    );
  }

  _Subareas subareas(Area? area) {
    return _Subareas(
      area,
    );
  }

  _Rocks rocks(Subarea? subarea) {
    return _Rocks(
      subarea,
    );
  }

  _Routes routes(Rock? rock) {
    return _Routes(
      rock,
    );
  }
}

/// @nodoc
const $ViewState = _$ViewStateTearOff();

/// @nodoc
mixin _$ViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countries,
    required TResult Function(Country? country) areas,
    required TResult Function(Area? area) subareas,
    required TResult Function(Subarea? subarea) rocks,
    required TResult Function(Rock? rock) routes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countries,
    TResult Function(Country? country)? areas,
    TResult Function(Area? area)? subareas,
    TResult Function(Subarea? subarea)? rocks,
    TResult Function(Rock? rock)? routes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countries value) countries,
    required TResult Function(_Areas value) areas,
    required TResult Function(_Subareas value) subareas,
    required TResult Function(_Rocks value) rocks,
    required TResult Function(_Routes value) routes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countries value)? countries,
    TResult Function(_Areas value)? areas,
    TResult Function(_Subareas value)? subareas,
    TResult Function(_Rocks value)? rocks,
    TResult Function(_Routes value)? routes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;
}

/// @nodoc
abstract class _$CountriesCopyWith<$Res> {
  factory _$CountriesCopyWith(
          _Countries value, $Res Function(_Countries) then) =
      __$CountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$CountriesCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$CountriesCopyWith<$Res> {
  __$CountriesCopyWithImpl(_Countries _value, $Res Function(_Countries) _then)
      : super(_value, (v) => _then(v as _Countries));

  @override
  _Countries get _value => super._value as _Countries;
}

/// @nodoc

class _$_Countries implements _Countries {
  const _$_Countries();

  @override
  String toString() {
    return 'ViewState.countries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Countries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countries,
    required TResult Function(Country? country) areas,
    required TResult Function(Area? area) subareas,
    required TResult Function(Subarea? subarea) rocks,
    required TResult Function(Rock? rock) routes,
  }) {
    return countries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countries,
    TResult Function(Country? country)? areas,
    TResult Function(Area? area)? subareas,
    TResult Function(Subarea? subarea)? rocks,
    TResult Function(Rock? rock)? routes,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countries value) countries,
    required TResult Function(_Areas value) areas,
    required TResult Function(_Subareas value) subareas,
    required TResult Function(_Rocks value) rocks,
    required TResult Function(_Routes value) routes,
  }) {
    return countries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countries value)? countries,
    TResult Function(_Areas value)? areas,
    TResult Function(_Subareas value)? subareas,
    TResult Function(_Rocks value)? rocks,
    TResult Function(_Routes value)? routes,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this);
    }
    return orElse();
  }
}

abstract class _Countries implements ViewState {
  const factory _Countries() = _$_Countries;
}

/// @nodoc
abstract class _$AreasCopyWith<$Res> {
  factory _$AreasCopyWith(_Areas value, $Res Function(_Areas) then) =
      __$AreasCopyWithImpl<$Res>;
  $Res call({Country? country});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$AreasCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$AreasCopyWith<$Res> {
  __$AreasCopyWithImpl(_Areas _value, $Res Function(_Areas) _then)
      : super(_value, (v) => _then(v as _Areas));

  @override
  _Areas get _value => super._value as _Areas;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_Areas(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }

  @override
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_Areas implements _Areas {
  const _$_Areas(this.country);

  @override
  final Country? country;

  @override
  String toString() {
    return 'ViewState.areas(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Areas &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$AreasCopyWith<_Areas> get copyWith =>
      __$AreasCopyWithImpl<_Areas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countries,
    required TResult Function(Country? country) areas,
    required TResult Function(Area? area) subareas,
    required TResult Function(Subarea? subarea) rocks,
    required TResult Function(Rock? rock) routes,
  }) {
    return areas(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countries,
    TResult Function(Country? country)? areas,
    TResult Function(Area? area)? subareas,
    TResult Function(Subarea? subarea)? rocks,
    TResult Function(Rock? rock)? routes,
    required TResult orElse(),
  }) {
    if (areas != null) {
      return areas(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countries value) countries,
    required TResult Function(_Areas value) areas,
    required TResult Function(_Subareas value) subareas,
    required TResult Function(_Rocks value) rocks,
    required TResult Function(_Routes value) routes,
  }) {
    return areas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countries value)? countries,
    TResult Function(_Areas value)? areas,
    TResult Function(_Subareas value)? subareas,
    TResult Function(_Rocks value)? rocks,
    TResult Function(_Routes value)? routes,
    required TResult orElse(),
  }) {
    if (areas != null) {
      return areas(this);
    }
    return orElse();
  }
}

abstract class _Areas implements ViewState {
  const factory _Areas(Country? country) = _$_Areas;

  Country? get country => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AreasCopyWith<_Areas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubareasCopyWith<$Res> {
  factory _$SubareasCopyWith(_Subareas value, $Res Function(_Subareas) then) =
      __$SubareasCopyWithImpl<$Res>;
  $Res call({Area? area});

  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$SubareasCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$SubareasCopyWith<$Res> {
  __$SubareasCopyWithImpl(_Subareas _value, $Res Function(_Subareas) _then)
      : super(_value, (v) => _then(v as _Subareas));

  @override
  _Subareas get _value => super._value as _Subareas;

  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_Subareas(
      area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
    ));
  }

  @override
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc

class _$_Subareas implements _Subareas {
  const _$_Subareas(this.area);

  @override
  final Area? area;

  @override
  String toString() {
    return 'ViewState.subareas(area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subareas &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(area);

  @JsonKey(ignore: true)
  @override
  _$SubareasCopyWith<_Subareas> get copyWith =>
      __$SubareasCopyWithImpl<_Subareas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countries,
    required TResult Function(Country? country) areas,
    required TResult Function(Area? area) subareas,
    required TResult Function(Subarea? subarea) rocks,
    required TResult Function(Rock? rock) routes,
  }) {
    return subareas(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countries,
    TResult Function(Country? country)? areas,
    TResult Function(Area? area)? subareas,
    TResult Function(Subarea? subarea)? rocks,
    TResult Function(Rock? rock)? routes,
    required TResult orElse(),
  }) {
    if (subareas != null) {
      return subareas(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countries value) countries,
    required TResult Function(_Areas value) areas,
    required TResult Function(_Subareas value) subareas,
    required TResult Function(_Rocks value) rocks,
    required TResult Function(_Routes value) routes,
  }) {
    return subareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countries value)? countries,
    TResult Function(_Areas value)? areas,
    TResult Function(_Subareas value)? subareas,
    TResult Function(_Rocks value)? rocks,
    TResult Function(_Routes value)? routes,
    required TResult orElse(),
  }) {
    if (subareas != null) {
      return subareas(this);
    }
    return orElse();
  }
}

abstract class _Subareas implements ViewState {
  const factory _Subareas(Area? area) = _$_Subareas;

  Area? get area => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubareasCopyWith<_Subareas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RocksCopyWith<$Res> {
  factory _$RocksCopyWith(_Rocks value, $Res Function(_Rocks) then) =
      __$RocksCopyWithImpl<$Res>;
  $Res call({Subarea? subarea});

  $SubareaCopyWith<$Res>? get subarea;
}

/// @nodoc
class __$RocksCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$RocksCopyWith<$Res> {
  __$RocksCopyWithImpl(_Rocks _value, $Res Function(_Rocks) _then)
      : super(_value, (v) => _then(v as _Rocks));

  @override
  _Rocks get _value => super._value as _Rocks;

  @override
  $Res call({
    Object? subarea = freezed,
  }) {
    return _then(_Rocks(
      subarea == freezed
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as Subarea?,
    ));
  }

  @override
  $SubareaCopyWith<$Res>? get subarea {
    if (_value.subarea == null) {
      return null;
    }

    return $SubareaCopyWith<$Res>(_value.subarea!, (value) {
      return _then(_value.copyWith(subarea: value));
    });
  }
}

/// @nodoc

class _$_Rocks implements _Rocks {
  const _$_Rocks(this.subarea);

  @override
  final Subarea? subarea;

  @override
  String toString() {
    return 'ViewState.rocks(subarea: $subarea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rocks &&
            (identical(other.subarea, subarea) ||
                const DeepCollectionEquality().equals(other.subarea, subarea)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subarea);

  @JsonKey(ignore: true)
  @override
  _$RocksCopyWith<_Rocks> get copyWith =>
      __$RocksCopyWithImpl<_Rocks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countries,
    required TResult Function(Country? country) areas,
    required TResult Function(Area? area) subareas,
    required TResult Function(Subarea? subarea) rocks,
    required TResult Function(Rock? rock) routes,
  }) {
    return rocks(subarea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countries,
    TResult Function(Country? country)? areas,
    TResult Function(Area? area)? subareas,
    TResult Function(Subarea? subarea)? rocks,
    TResult Function(Rock? rock)? routes,
    required TResult orElse(),
  }) {
    if (rocks != null) {
      return rocks(subarea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countries value) countries,
    required TResult Function(_Areas value) areas,
    required TResult Function(_Subareas value) subareas,
    required TResult Function(_Rocks value) rocks,
    required TResult Function(_Routes value) routes,
  }) {
    return rocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countries value)? countries,
    TResult Function(_Areas value)? areas,
    TResult Function(_Subareas value)? subareas,
    TResult Function(_Rocks value)? rocks,
    TResult Function(_Routes value)? routes,
    required TResult orElse(),
  }) {
    if (rocks != null) {
      return rocks(this);
    }
    return orElse();
  }
}

abstract class _Rocks implements ViewState {
  const factory _Rocks(Subarea? subarea) = _$_Rocks;

  Subarea? get subarea => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RocksCopyWith<_Rocks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RoutesCopyWith<$Res> {
  factory _$RoutesCopyWith(_Routes value, $Res Function(_Routes) then) =
      __$RoutesCopyWithImpl<$Res>;
  $Res call({Rock? rock});

  $RockCopyWith<$Res>? get rock;
}

/// @nodoc
class __$RoutesCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$RoutesCopyWith<$Res> {
  __$RoutesCopyWithImpl(_Routes _value, $Res Function(_Routes) _then)
      : super(_value, (v) => _then(v as _Routes));

  @override
  _Routes get _value => super._value as _Routes;

  @override
  $Res call({
    Object? rock = freezed,
  }) {
    return _then(_Routes(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Rock?,
    ));
  }

  @override
  $RockCopyWith<$Res>? get rock {
    if (_value.rock == null) {
      return null;
    }

    return $RockCopyWith<$Res>(_value.rock!, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_Routes implements _Routes {
  const _$_Routes(this.rock);

  @override
  final Rock? rock;

  @override
  String toString() {
    return 'ViewState.routes(rock: $rock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Routes &&
            (identical(other.rock, rock) ||
                const DeepCollectionEquality().equals(other.rock, rock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rock);

  @JsonKey(ignore: true)
  @override
  _$RoutesCopyWith<_Routes> get copyWith =>
      __$RoutesCopyWithImpl<_Routes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countries,
    required TResult Function(Country? country) areas,
    required TResult Function(Area? area) subareas,
    required TResult Function(Subarea? subarea) rocks,
    required TResult Function(Rock? rock) routes,
  }) {
    return routes(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countries,
    TResult Function(Country? country)? areas,
    TResult Function(Area? area)? subareas,
    TResult Function(Subarea? subarea)? rocks,
    TResult Function(Rock? rock)? routes,
    required TResult orElse(),
  }) {
    if (routes != null) {
      return routes(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countries value) countries,
    required TResult Function(_Areas value) areas,
    required TResult Function(_Subareas value) subareas,
    required TResult Function(_Rocks value) rocks,
    required TResult Function(_Routes value) routes,
  }) {
    return routes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countries value)? countries,
    TResult Function(_Areas value)? areas,
    TResult Function(_Subareas value)? subareas,
    TResult Function(_Rocks value)? rocks,
    TResult Function(_Routes value)? routes,
    required TResult orElse(),
  }) {
    if (routes != null) {
      return routes(this);
    }
    return orElse();
  }
}

abstract class _Routes implements ViewState {
  const factory _Routes(Rock? rock) = _$_Routes;

  Rock? get rock => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RoutesCopyWith<_Routes> get copyWith => throw _privateConstructorUsedError;
}
