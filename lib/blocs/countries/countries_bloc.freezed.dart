// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'countries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountriesEventTearOff {
  const _$CountriesEventTearOff();

  _RequestCountries requestCountries() {
    return const _RequestCountries();
  }
}

/// @nodoc
const $CountriesEvent = _$CountriesEventTearOff();

/// @nodoc
mixin _$CountriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCountries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCountries value) requestCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCountries value)? requestCountries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesEventCopyWith<$Res> {
  factory $CountriesEventCopyWith(
          CountriesEvent value, $Res Function(CountriesEvent) then) =
      _$CountriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountriesEventCopyWithImpl<$Res>
    implements $CountriesEventCopyWith<$Res> {
  _$CountriesEventCopyWithImpl(this._value, this._then);

  final CountriesEvent _value;
  // ignore: unused_field
  final $Res Function(CountriesEvent) _then;
}

/// @nodoc
abstract class _$RequestCountriesCopyWith<$Res> {
  factory _$RequestCountriesCopyWith(
          _RequestCountries value, $Res Function(_RequestCountries) then) =
      __$RequestCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestCountriesCopyWithImpl<$Res>
    extends _$CountriesEventCopyWithImpl<$Res>
    implements _$RequestCountriesCopyWith<$Res> {
  __$RequestCountriesCopyWithImpl(
      _RequestCountries _value, $Res Function(_RequestCountries) _then)
      : super(_value, (v) => _then(v as _RequestCountries));

  @override
  _RequestCountries get _value => super._value as _RequestCountries;
}

/// @nodoc

class _$_RequestCountries implements _RequestCountries {
  const _$_RequestCountries();

  @override
  String toString() {
    return 'CountriesEvent.requestCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCountries,
  }) {
    return requestCountries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCountries,
    required TResult orElse(),
  }) {
    if (requestCountries != null) {
      return requestCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCountries value) requestCountries,
  }) {
    return requestCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCountries value)? requestCountries,
    required TResult orElse(),
  }) {
    if (requestCountries != null) {
      return requestCountries(this);
    }
    return orElse();
  }
}

abstract class _RequestCountries implements CountriesEvent {
  const factory _RequestCountries() = _$_RequestCountries;
}

/// @nodoc
class _$CountriesStateTearOff {
  const _$CountriesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _CountriesReceived countriesReceived(List<Country> countries) {
    return _CountriesReceived(
      countries,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $CountriesState = _$CountriesStateTearOff();

/// @nodoc
mixin _$CountriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Country> countries) countriesReceived,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Country> countries)? countriesReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CountriesReceived value) countriesReceived,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CountriesReceived value)? countriesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesStateCopyWith<$Res> {
  factory $CountriesStateCopyWith(
          CountriesState value, $Res Function(CountriesState) then) =
      _$CountriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountriesStateCopyWithImpl<$Res>
    implements $CountriesStateCopyWith<$Res> {
  _$CountriesStateCopyWithImpl(this._value, this._then);

  final CountriesState _value;
  // ignore: unused_field
  final $Res Function(CountriesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CountriesStateCopyWithImpl<$Res>
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
    return 'CountriesState.initial()';
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
    required TResult Function(List<Country> countries) countriesReceived,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Country> countries)? countriesReceived,
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
    required TResult Function(_CountriesReceived value) countriesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CountriesReceived value)? countriesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CountriesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$CountriesStateCopyWithImpl<$Res>
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
    return 'CountriesState.inProgress()';
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
    required TResult Function(List<Country> countries) countriesReceived,
    required TResult Function() failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Country> countries)? countriesReceived,
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
    required TResult Function(_CountriesReceived value) countriesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CountriesReceived value)? countriesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements CountriesState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$CountriesReceivedCopyWith<$Res> {
  factory _$CountriesReceivedCopyWith(
          _CountriesReceived value, $Res Function(_CountriesReceived) then) =
      __$CountriesReceivedCopyWithImpl<$Res>;
  $Res call({List<Country> countries});
}

/// @nodoc
class __$CountriesReceivedCopyWithImpl<$Res>
    extends _$CountriesStateCopyWithImpl<$Res>
    implements _$CountriesReceivedCopyWith<$Res> {
  __$CountriesReceivedCopyWithImpl(
      _CountriesReceived _value, $Res Function(_CountriesReceived) _then)
      : super(_value, (v) => _then(v as _CountriesReceived));

  @override
  _CountriesReceived get _value => super._value as _CountriesReceived;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_CountriesReceived(
      countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$_CountriesReceived implements _CountriesReceived {
  const _$_CountriesReceived(this.countries);

  @override
  final List<Country> countries;

  @override
  String toString() {
    return 'CountriesState.countriesReceived(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesReceived &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countries);

  @JsonKey(ignore: true)
  @override
  _$CountriesReceivedCopyWith<_CountriesReceived> get copyWith =>
      __$CountriesReceivedCopyWithImpl<_CountriesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Country> countries) countriesReceived,
    required TResult Function() failure,
  }) {
    return countriesReceived(countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Country> countries)? countriesReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (countriesReceived != null) {
      return countriesReceived(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CountriesReceived value) countriesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return countriesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CountriesReceived value)? countriesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (countriesReceived != null) {
      return countriesReceived(this);
    }
    return orElse();
  }
}

abstract class _CountriesReceived implements CountriesState {
  const factory _CountriesReceived(List<Country> countries) =
      _$_CountriesReceived;

  List<Country> get countries => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CountriesReceivedCopyWith<_CountriesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$CountriesStateCopyWithImpl<$Res>
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
    return 'CountriesState.failure()';
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
    required TResult Function(List<Country> countries) countriesReceived,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Country> countries)? countriesReceived,
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
    required TResult Function(_CountriesReceived value) countriesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CountriesReceived value)? countriesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CountriesState {
  const factory _Failure() = _$_Failure;
}
