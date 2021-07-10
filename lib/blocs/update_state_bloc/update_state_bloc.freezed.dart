// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateStateEventTearOff {
  const _$UpdateStateEventTearOff();

  _UpdateCountries updateCountries() {
    return const _UpdateCountries();
  }

  _UpdateAreas updateAreas(Country country) {
    return _UpdateAreas(
      country,
    );
  }
}

/// @nodoc
const $UpdateStateEvent = _$UpdateStateEventTearOff();

/// @nodoc
mixin _$UpdateStateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateCountries,
    required TResult Function(Country country) updateAreas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateCountries,
    TResult Function(Country country)? updateAreas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCountries value) updateCountries,
    required TResult Function(_UpdateAreas value) updateAreas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCountries value)? updateCountries,
    TResult Function(_UpdateAreas value)? updateAreas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateEventCopyWith<$Res> {
  factory $UpdateStateEventCopyWith(
          UpdateStateEvent value, $Res Function(UpdateStateEvent) then) =
      _$UpdateStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateStateEventCopyWithImpl<$Res>
    implements $UpdateStateEventCopyWith<$Res> {
  _$UpdateStateEventCopyWithImpl(this._value, this._then);

  final UpdateStateEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateStateEvent) _then;
}

/// @nodoc
abstract class _$UpdateCountriesCopyWith<$Res> {
  factory _$UpdateCountriesCopyWith(
          _UpdateCountries value, $Res Function(_UpdateCountries) then) =
      __$UpdateCountriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateCountriesCopyWithImpl<$Res>
    extends _$UpdateStateEventCopyWithImpl<$Res>
    implements _$UpdateCountriesCopyWith<$Res> {
  __$UpdateCountriesCopyWithImpl(
      _UpdateCountries _value, $Res Function(_UpdateCountries) _then)
      : super(_value, (v) => _then(v as _UpdateCountries));

  @override
  _UpdateCountries get _value => super._value as _UpdateCountries;
}

/// @nodoc

class _$_UpdateCountries implements _UpdateCountries {
  const _$_UpdateCountries();

  @override
  String toString() {
    return 'UpdateStateEvent.updateCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateCountries,
    required TResult Function(Country country) updateAreas,
  }) {
    return updateCountries();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateCountries,
    TResult Function(Country country)? updateAreas,
    required TResult orElse(),
  }) {
    if (updateCountries != null) {
      return updateCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCountries value) updateCountries,
    required TResult Function(_UpdateAreas value) updateAreas,
  }) {
    return updateCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCountries value)? updateCountries,
    TResult Function(_UpdateAreas value)? updateAreas,
    required TResult orElse(),
  }) {
    if (updateCountries != null) {
      return updateCountries(this);
    }
    return orElse();
  }
}

abstract class _UpdateCountries implements UpdateStateEvent {
  const factory _UpdateCountries() = _$_UpdateCountries;
}

/// @nodoc
abstract class _$UpdateAreasCopyWith<$Res> {
  factory _$UpdateAreasCopyWith(
          _UpdateAreas value, $Res Function(_UpdateAreas) then) =
      __$UpdateAreasCopyWithImpl<$Res>;
  $Res call({Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$UpdateAreasCopyWithImpl<$Res>
    extends _$UpdateStateEventCopyWithImpl<$Res>
    implements _$UpdateAreasCopyWith<$Res> {
  __$UpdateAreasCopyWithImpl(
      _UpdateAreas _value, $Res Function(_UpdateAreas) _then)
      : super(_value, (v) => _then(v as _UpdateAreas));

  @override
  _UpdateAreas get _value => super._value as _UpdateAreas;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_UpdateAreas(
      country == freezed
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

class _$_UpdateAreas implements _UpdateAreas {
  const _$_UpdateAreas(this.country);

  @override
  final Country country;

  @override
  String toString() {
    return 'UpdateStateEvent.updateAreas(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAreas &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$UpdateAreasCopyWith<_UpdateAreas> get copyWith =>
      __$UpdateAreasCopyWithImpl<_UpdateAreas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateCountries,
    required TResult Function(Country country) updateAreas,
  }) {
    return updateAreas(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateCountries,
    TResult Function(Country country)? updateAreas,
    required TResult orElse(),
  }) {
    if (updateAreas != null) {
      return updateAreas(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCountries value) updateCountries,
    required TResult Function(_UpdateAreas value) updateAreas,
  }) {
    return updateAreas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCountries value)? updateCountries,
    TResult Function(_UpdateAreas value)? updateAreas,
    required TResult orElse(),
  }) {
    if (updateAreas != null) {
      return updateAreas(this);
    }
    return orElse();
  }
}

abstract class _UpdateAreas implements UpdateStateEvent {
  const factory _UpdateAreas(Country country) = _$_UpdateAreas;

  Country get country => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateAreasCopyWith<_UpdateAreas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateStateStateTearOff {
  const _$UpdateStateStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Updating updating(String step, int percent) {
    return _Updating(
      step,
      percent,
    );
  }

  _Finished finished(int result) {
    return _Finished(
      result,
    );
  }

  _UpdatingAll updatingAll(String step, int percent) {
    return _UpdatingAll(
      step,
      percent,
    );
  }

  _FinishedAll finishedAll(int result) {
    return _FinishedAll(
      result,
    );
  }

  _UpdatingTT updatingTT(String step, int percent) {
    return _UpdatingTT(
      step,
      percent,
    );
  }

  _FinishedTT finishedTT(int result) {
    return _FinishedTT(
      result,
    );
  }

  _Failure failure(dynamic exception) {
    return _Failure(
      exception,
    );
  }
}

/// @nodoc
const $UpdateStateState = _$UpdateStateStateTearOff();

/// @nodoc
mixin _$UpdateStateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateStateCopyWith<$Res> {
  factory $UpdateStateStateCopyWith(
          UpdateStateState value, $Res Function(UpdateStateState) then) =
      _$UpdateStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateStateStateCopyWithImpl<$Res>
    implements $UpdateStateStateCopyWith<$Res> {
  _$UpdateStateStateCopyWithImpl(this._value, this._then);

  final UpdateStateState _value;
  // ignore: unused_field
  final $Res Function(UpdateStateState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'UpdateStateState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements UpdateStateState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$UpdatingCopyWith<$Res> {
  factory _$UpdatingCopyWith(_Updating value, $Res Function(_Updating) then) =
      __$UpdatingCopyWithImpl<$Res>;
  $Res call({String step, int percent});
}

/// @nodoc
class __$UpdatingCopyWithImpl<$Res> extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$UpdatingCopyWith<$Res> {
  __$UpdatingCopyWithImpl(_Updating _value, $Res Function(_Updating) _then)
      : super(_value, (v) => _then(v as _Updating));

  @override
  _Updating get _value => super._value as _Updating;

  @override
  $Res call({
    Object? step = freezed,
    Object? percent = freezed,
  }) {
    return _then(_Updating(
      step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Updating implements _Updating {
  const _$_Updating(this.step, this.percent);

  @override
  final String step;
  @override
  final int percent;

  @override
  String toString() {
    return 'UpdateStateState.updating(step: $step, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updating &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)) &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(step) ^
      const DeepCollectionEquality().hash(percent);

  @JsonKey(ignore: true)
  @override
  _$UpdatingCopyWith<_Updating> get copyWith =>
      __$UpdatingCopyWithImpl<_Updating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return updating(step, percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(step, percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _Updating implements UpdateStateState {
  const factory _Updating(String step, int percent) = _$_Updating;

  String get step => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatingCopyWith<_Updating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) then) =
      __$FinishedCopyWithImpl<$Res>;
  $Res call({int result});
}

/// @nodoc
class __$FinishedCopyWithImpl<$Res> extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(_Finished _value, $Res Function(_Finished) _then)
      : super(_value, (v) => _then(v as _Finished));

  @override
  _Finished get _value => super._value as _Finished;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_Finished(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished(this.result);

  @override
  final int result;

  @override
  String toString() {
    return 'UpdateStateState.finished(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Finished &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$FinishedCopyWith<_Finished> get copyWith =>
      __$FinishedCopyWithImpl<_Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return finished(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements UpdateStateState {
  const factory _Finished(int result) = _$_Finished;

  int get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FinishedCopyWith<_Finished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatingAllCopyWith<$Res> {
  factory _$UpdatingAllCopyWith(
          _UpdatingAll value, $Res Function(_UpdatingAll) then) =
      __$UpdatingAllCopyWithImpl<$Res>;
  $Res call({String step, int percent});
}

/// @nodoc
class __$UpdatingAllCopyWithImpl<$Res>
    extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$UpdatingAllCopyWith<$Res> {
  __$UpdatingAllCopyWithImpl(
      _UpdatingAll _value, $Res Function(_UpdatingAll) _then)
      : super(_value, (v) => _then(v as _UpdatingAll));

  @override
  _UpdatingAll get _value => super._value as _UpdatingAll;

  @override
  $Res call({
    Object? step = freezed,
    Object? percent = freezed,
  }) {
    return _then(_UpdatingAll(
      step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdatingAll implements _UpdatingAll {
  const _$_UpdatingAll(this.step, this.percent);

  @override
  final String step;
  @override
  final int percent;

  @override
  String toString() {
    return 'UpdateStateState.updatingAll(step: $step, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatingAll &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)) &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(step) ^
      const DeepCollectionEquality().hash(percent);

  @JsonKey(ignore: true)
  @override
  _$UpdatingAllCopyWith<_UpdatingAll> get copyWith =>
      __$UpdatingAllCopyWithImpl<_UpdatingAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return updatingAll(step, percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (updatingAll != null) {
      return updatingAll(step, percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return updatingAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updatingAll != null) {
      return updatingAll(this);
    }
    return orElse();
  }
}

abstract class _UpdatingAll implements UpdateStateState {
  const factory _UpdatingAll(String step, int percent) = _$_UpdatingAll;

  String get step => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatingAllCopyWith<_UpdatingAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedAllCopyWith<$Res> {
  factory _$FinishedAllCopyWith(
          _FinishedAll value, $Res Function(_FinishedAll) then) =
      __$FinishedAllCopyWithImpl<$Res>;
  $Res call({int result});
}

/// @nodoc
class __$FinishedAllCopyWithImpl<$Res>
    extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$FinishedAllCopyWith<$Res> {
  __$FinishedAllCopyWithImpl(
      _FinishedAll _value, $Res Function(_FinishedAll) _then)
      : super(_value, (v) => _then(v as _FinishedAll));

  @override
  _FinishedAll get _value => super._value as _FinishedAll;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_FinishedAll(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FinishedAll implements _FinishedAll {
  const _$_FinishedAll(this.result);

  @override
  final int result;

  @override
  String toString() {
    return 'UpdateStateState.finishedAll(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishedAll &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$FinishedAllCopyWith<_FinishedAll> get copyWith =>
      __$FinishedAllCopyWithImpl<_FinishedAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return finishedAll(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (finishedAll != null) {
      return finishedAll(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return finishedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (finishedAll != null) {
      return finishedAll(this);
    }
    return orElse();
  }
}

abstract class _FinishedAll implements UpdateStateState {
  const factory _FinishedAll(int result) = _$_FinishedAll;

  int get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FinishedAllCopyWith<_FinishedAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatingTTCopyWith<$Res> {
  factory _$UpdatingTTCopyWith(
          _UpdatingTT value, $Res Function(_UpdatingTT) then) =
      __$UpdatingTTCopyWithImpl<$Res>;
  $Res call({String step, int percent});
}

/// @nodoc
class __$UpdatingTTCopyWithImpl<$Res>
    extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$UpdatingTTCopyWith<$Res> {
  __$UpdatingTTCopyWithImpl(
      _UpdatingTT _value, $Res Function(_UpdatingTT) _then)
      : super(_value, (v) => _then(v as _UpdatingTT));

  @override
  _UpdatingTT get _value => super._value as _UpdatingTT;

  @override
  $Res call({
    Object? step = freezed,
    Object? percent = freezed,
  }) {
    return _then(_UpdatingTT(
      step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdatingTT implements _UpdatingTT {
  const _$_UpdatingTT(this.step, this.percent);

  @override
  final String step;
  @override
  final int percent;

  @override
  String toString() {
    return 'UpdateStateState.updatingTT(step: $step, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatingTT &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)) &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(step) ^
      const DeepCollectionEquality().hash(percent);

  @JsonKey(ignore: true)
  @override
  _$UpdatingTTCopyWith<_UpdatingTT> get copyWith =>
      __$UpdatingTTCopyWithImpl<_UpdatingTT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return updatingTT(step, percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (updatingTT != null) {
      return updatingTT(step, percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return updatingTT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updatingTT != null) {
      return updatingTT(this);
    }
    return orElse();
  }
}

abstract class _UpdatingTT implements UpdateStateState {
  const factory _UpdatingTT(String step, int percent) = _$_UpdatingTT;

  String get step => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatingTTCopyWith<_UpdatingTT> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedTTCopyWith<$Res> {
  factory _$FinishedTTCopyWith(
          _FinishedTT value, $Res Function(_FinishedTT) then) =
      __$FinishedTTCopyWithImpl<$Res>;
  $Res call({int result});
}

/// @nodoc
class __$FinishedTTCopyWithImpl<$Res>
    extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$FinishedTTCopyWith<$Res> {
  __$FinishedTTCopyWithImpl(
      _FinishedTT _value, $Res Function(_FinishedTT) _then)
      : super(_value, (v) => _then(v as _FinishedTT));

  @override
  _FinishedTT get _value => super._value as _FinishedTT;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_FinishedTT(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FinishedTT implements _FinishedTT {
  const _$_FinishedTT(this.result);

  @override
  final int result;

  @override
  String toString() {
    return 'UpdateStateState.finishedTT(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishedTT &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$FinishedTTCopyWith<_FinishedTT> get copyWith =>
      __$FinishedTTCopyWithImpl<_FinishedTT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return finishedTT(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (finishedTT != null) {
      return finishedTT(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return finishedTT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (finishedTT != null) {
      return finishedTT(this);
    }
    return orElse();
  }
}

abstract class _FinishedTT implements UpdateStateState {
  const factory _FinishedTT(int result) = _$_FinishedTT;

  int get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FinishedTTCopyWith<_FinishedTT> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({dynamic exception});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$UpdateStateStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Failure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.exception);

  @override
  final dynamic exception;

  @override
  String toString() {
    return 'UpdateStateState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String step, int percent) updating,
    required TResult Function(int result) finished,
    required TResult Function(String step, int percent) updatingAll,
    required TResult Function(int result) finishedAll,
    required TResult Function(String step, int percent) updatingTT,
    required TResult Function(int result) finishedTT,
    required TResult Function(dynamic exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String step, int percent)? updating,
    TResult Function(int result)? finished,
    TResult Function(String step, int percent)? updatingAll,
    TResult Function(int result)? finishedAll,
    TResult Function(String step, int percent)? updatingTT,
    TResult Function(int result)? finishedTT,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Finished value) finished,
    required TResult Function(_UpdatingAll value) updatingAll,
    required TResult Function(_FinishedAll value) finishedAll,
    required TResult Function(_UpdatingTT value) updatingTT,
    required TResult Function(_FinishedTT value) finishedTT,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Updating value)? updating,
    TResult Function(_Finished value)? finished,
    TResult Function(_UpdatingAll value)? updatingAll,
    TResult Function(_FinishedAll value)? finishedAll,
    TResult Function(_UpdatingTT value)? updatingTT,
    TResult Function(_FinishedTT value)? finishedTT,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UpdateStateState {
  const factory _Failure(dynamic exception) = _$_Failure;

  dynamic get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
