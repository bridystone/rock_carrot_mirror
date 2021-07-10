// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'areas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AreasEventTearOff {
  const _$AreasEventTearOff();

  _RequestAreas requestAreas(Country country) {
    return _RequestAreas(
      country,
    );
  }
}

/// @nodoc
const $AreasEvent = _$AreasEventTearOff();

/// @nodoc
mixin _$AreasEvent {
  Country get country => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) requestAreas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? requestAreas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestAreas value) requestAreas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestAreas value)? requestAreas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AreasEventCopyWith<AreasEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreasEventCopyWith<$Res> {
  factory $AreasEventCopyWith(
          AreasEvent value, $Res Function(AreasEvent) then) =
      _$AreasEventCopyWithImpl<$Res>;
  $Res call({Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$AreasEventCopyWithImpl<$Res> implements $AreasEventCopyWith<$Res> {
  _$AreasEventCopyWithImpl(this._value, this._then);

  final AreasEvent _value;
  // ignore: unused_field
  final $Res Function(AreasEvent) _then;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$RequestAreasCopyWith<$Res>
    implements $AreasEventCopyWith<$Res> {
  factory _$RequestAreasCopyWith(
          _RequestAreas value, $Res Function(_RequestAreas) then) =
      __$RequestAreasCopyWithImpl<$Res>;
  @override
  $Res call({Country country});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$RequestAreasCopyWithImpl<$Res> extends _$AreasEventCopyWithImpl<$Res>
    implements _$RequestAreasCopyWith<$Res> {
  __$RequestAreasCopyWithImpl(
      _RequestAreas _value, $Res Function(_RequestAreas) _then)
      : super(_value, (v) => _then(v as _RequestAreas));

  @override
  _RequestAreas get _value => super._value as _RequestAreas;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_RequestAreas(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$_RequestAreas implements _RequestAreas {
  const _$_RequestAreas(this.country);

  @override
  final Country country;

  @override
  String toString() {
    return 'AreasEvent.requestAreas(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestAreas &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$RequestAreasCopyWith<_RequestAreas> get copyWith =>
      __$RequestAreasCopyWithImpl<_RequestAreas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) requestAreas,
  }) {
    return requestAreas(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? requestAreas,
    required TResult orElse(),
  }) {
    if (requestAreas != null) {
      return requestAreas(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestAreas value) requestAreas,
  }) {
    return requestAreas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestAreas value)? requestAreas,
    required TResult orElse(),
  }) {
    if (requestAreas != null) {
      return requestAreas(this);
    }
    return orElse();
  }
}

abstract class _RequestAreas implements AreasEvent {
  const factory _RequestAreas(Country country) = _$_RequestAreas;

  @override
  Country get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestAreasCopyWith<_RequestAreas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AreasStateTearOff {
  const _$AreasStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _AreasReceived areasReceived(Country country, List<Area> areas) {
    return _AreasReceived(
      country,
      areas,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $AreasState = _$AreasStateTearOff();

/// @nodoc
mixin _$AreasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Country country, List<Area> areas) areasReceived,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Country country, List<Area> areas)? areasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AreasReceived value) areasReceived,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AreasReceived value)? areasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreasStateCopyWith<$Res> {
  factory $AreasStateCopyWith(
          AreasState value, $Res Function(AreasState) then) =
      _$AreasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AreasStateCopyWithImpl<$Res> implements $AreasStateCopyWith<$Res> {
  _$AreasStateCopyWithImpl(this._value, this._then);

  final AreasState _value;
  // ignore: unused_field
  final $Res Function(AreasState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AreasStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AreasState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Country country, List<Area> areas) areasReceived,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Country country, List<Area> areas)? areasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AreasReceived value) areasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AreasReceived value)? areasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AreasState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$AreasStateCopyWithImpl<$Res>
    implements _$InProgressCopyWith<$Res> {
  __$InProgressCopyWithImpl(
      _InProgress _value, $Res Function(_InProgress) _then)
      : super(_value, (v) => _then(v as _InProgress));

  @override
  _InProgress get _value => super._value as _InProgress;
}

/// @nodoc

class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'AreasState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Country country, List<Area> areas) areasReceived,
    required TResult Function() failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Country country, List<Area> areas)? areasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AreasReceived value) areasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AreasReceived value)? areasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements AreasState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$AreasReceivedCopyWith<$Res> {
  factory _$AreasReceivedCopyWith(
          _AreasReceived value, $Res Function(_AreasReceived) then) =
      __$AreasReceivedCopyWithImpl<$Res>;
  $Res call({Country country, List<Area> areas});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$AreasReceivedCopyWithImpl<$Res> extends _$AreasStateCopyWithImpl<$Res>
    implements _$AreasReceivedCopyWith<$Res> {
  __$AreasReceivedCopyWithImpl(
      _AreasReceived _value, $Res Function(_AreasReceived) _then)
      : super(_value, (v) => _then(v as _AreasReceived));

  @override
  _AreasReceived get _value => super._value as _AreasReceived;

  @override
  $Res call({
    Object? country = freezed,
    Object? areas = freezed,
  }) {
    return _then(_AreasReceived(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      areas == freezed
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_AreasReceived implements _AreasReceived {
  const _$_AreasReceived(this.country, this.areas);

  @override
  final Country country;
  @override
  final List<Area> areas;

  @override
  String toString() {
    return 'AreasState.areasReceived(country: $country, areas: $areas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AreasReceived &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.areas, areas) ||
                const DeepCollectionEquality().equals(other.areas, areas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(areas);

  @JsonKey(ignore: true)
  @override
  _$AreasReceivedCopyWith<_AreasReceived> get copyWith =>
      __$AreasReceivedCopyWithImpl<_AreasReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Country country, List<Area> areas) areasReceived,
    required TResult Function() failure,
  }) {
    return areasReceived(country, areas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Country country, List<Area> areas)? areasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (areasReceived != null) {
      return areasReceived(country, areas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AreasReceived value) areasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return areasReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AreasReceived value)? areasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (areasReceived != null) {
      return areasReceived(this);
    }
    return orElse();
  }
}

abstract class _AreasReceived implements AreasState {
  const factory _AreasReceived(Country country, List<Area> areas) =
      _$_AreasReceived;

  Country get country => throw _privateConstructorUsedError;
  List<Area> get areas => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AreasReceivedCopyWith<_AreasReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$AreasStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'AreasState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Country country, List<Area> areas) areasReceived,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Country country, List<Area> areas)? areasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_AreasReceived value) areasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_AreasReceived value)? areasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AreasState {
  const factory _Failure() = _$_Failure;
}