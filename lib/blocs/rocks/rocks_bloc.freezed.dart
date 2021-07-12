// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rocks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RocksEventTearOff {
  const _$RocksEventTearOff();

  _RequestRocks requestRocks(Subarea subarea) {
    return _RequestRocks(
      subarea,
    );
  }

  _UpdateRocks updateRocks(Subarea subarea) {
    return _UpdateRocks(
      subarea,
    );
  }

  _UpdateRocksTT updateRocksTT(Subarea subarea) {
    return _UpdateRocksTT(
      subarea,
    );
  }

  _InvalidateRocks invalidateRocks() {
    return const _InvalidateRocks();
  }
}

/// @nodoc
const $RocksEvent = _$RocksEventTearOff();

/// @nodoc
mixin _$RocksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subarea subarea) requestRocks,
    required TResult Function(Subarea subarea) updateRocks,
    required TResult Function(Subarea subarea) updateRocksTT,
    required TResult Function() invalidateRocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
    TResult Function(Subarea subarea)? updateRocks,
    TResult Function(Subarea subarea)? updateRocksTT,
    TResult Function()? invalidateRocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRocks value) requestRocks,
    required TResult Function(_UpdateRocks value) updateRocks,
    required TResult Function(_UpdateRocksTT value) updateRocksTT,
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
    TResult Function(_UpdateRocks value)? updateRocks,
    TResult Function(_UpdateRocksTT value)? updateRocksTT,
    TResult Function(_InvalidateRocks value)? invalidateRocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocksEventCopyWith<$Res> {
  factory $RocksEventCopyWith(
          RocksEvent value, $Res Function(RocksEvent) then) =
      _$RocksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RocksEventCopyWithImpl<$Res> implements $RocksEventCopyWith<$Res> {
  _$RocksEventCopyWithImpl(this._value, this._then);

  final RocksEvent _value;
  // ignore: unused_field
  final $Res Function(RocksEvent) _then;
}

/// @nodoc
abstract class _$RequestRocksCopyWith<$Res> {
  factory _$RequestRocksCopyWith(
          _RequestRocks value, $Res Function(_RequestRocks) then) =
      __$RequestRocksCopyWithImpl<$Res>;
  $Res call({Subarea subarea});

  $SubareaCopyWith<$Res> get subarea;
}

/// @nodoc
class __$RequestRocksCopyWithImpl<$Res> extends _$RocksEventCopyWithImpl<$Res>
    implements _$RequestRocksCopyWith<$Res> {
  __$RequestRocksCopyWithImpl(
      _RequestRocks _value, $Res Function(_RequestRocks) _then)
      : super(_value, (v) => _then(v as _RequestRocks));

  @override
  _RequestRocks get _value => super._value as _RequestRocks;

  @override
  $Res call({
    Object? subarea = freezed,
  }) {
    return _then(_RequestRocks(
      subarea == freezed
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as Subarea,
    ));
  }

  @override
  $SubareaCopyWith<$Res> get subarea {
    return $SubareaCopyWith<$Res>(_value.subarea, (value) {
      return _then(_value.copyWith(subarea: value));
    });
  }
}

/// @nodoc

class _$_RequestRocks implements _RequestRocks {
  const _$_RequestRocks(this.subarea);

  @override
  final Subarea subarea;

  @override
  String toString() {
    return 'RocksEvent.requestRocks(subarea: $subarea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestRocks &&
            (identical(other.subarea, subarea) ||
                const DeepCollectionEquality().equals(other.subarea, subarea)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subarea);

  @JsonKey(ignore: true)
  @override
  _$RequestRocksCopyWith<_RequestRocks> get copyWith =>
      __$RequestRocksCopyWithImpl<_RequestRocks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subarea subarea) requestRocks,
    required TResult Function(Subarea subarea) updateRocks,
    required TResult Function(Subarea subarea) updateRocksTT,
    required TResult Function() invalidateRocks,
  }) {
    return requestRocks(subarea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
    TResult Function(Subarea subarea)? updateRocks,
    TResult Function(Subarea subarea)? updateRocksTT,
    TResult Function()? invalidateRocks,
    required TResult orElse(),
  }) {
    if (requestRocks != null) {
      return requestRocks(subarea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRocks value) requestRocks,
    required TResult Function(_UpdateRocks value) updateRocks,
    required TResult Function(_UpdateRocksTT value) updateRocksTT,
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) {
    return requestRocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
    TResult Function(_UpdateRocks value)? updateRocks,
    TResult Function(_UpdateRocksTT value)? updateRocksTT,
    TResult Function(_InvalidateRocks value)? invalidateRocks,
    required TResult orElse(),
  }) {
    if (requestRocks != null) {
      return requestRocks(this);
    }
    return orElse();
  }
}

abstract class _RequestRocks implements RocksEvent {
  const factory _RequestRocks(Subarea subarea) = _$_RequestRocks;

  Subarea get subarea => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestRocksCopyWith<_RequestRocks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateRocksCopyWith<$Res> {
  factory _$UpdateRocksCopyWith(
          _UpdateRocks value, $Res Function(_UpdateRocks) then) =
      __$UpdateRocksCopyWithImpl<$Res>;
  $Res call({Subarea subarea});

  $SubareaCopyWith<$Res> get subarea;
}

/// @nodoc
class __$UpdateRocksCopyWithImpl<$Res> extends _$RocksEventCopyWithImpl<$Res>
    implements _$UpdateRocksCopyWith<$Res> {
  __$UpdateRocksCopyWithImpl(
      _UpdateRocks _value, $Res Function(_UpdateRocks) _then)
      : super(_value, (v) => _then(v as _UpdateRocks));

  @override
  _UpdateRocks get _value => super._value as _UpdateRocks;

  @override
  $Res call({
    Object? subarea = freezed,
  }) {
    return _then(_UpdateRocks(
      subarea == freezed
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as Subarea,
    ));
  }

  @override
  $SubareaCopyWith<$Res> get subarea {
    return $SubareaCopyWith<$Res>(_value.subarea, (value) {
      return _then(_value.copyWith(subarea: value));
    });
  }
}

/// @nodoc

class _$_UpdateRocks implements _UpdateRocks {
  const _$_UpdateRocks(this.subarea);

  @override
  final Subarea subarea;

  @override
  String toString() {
    return 'RocksEvent.updateRocks(subarea: $subarea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateRocks &&
            (identical(other.subarea, subarea) ||
                const DeepCollectionEquality().equals(other.subarea, subarea)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subarea);

  @JsonKey(ignore: true)
  @override
  _$UpdateRocksCopyWith<_UpdateRocks> get copyWith =>
      __$UpdateRocksCopyWithImpl<_UpdateRocks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subarea subarea) requestRocks,
    required TResult Function(Subarea subarea) updateRocks,
    required TResult Function(Subarea subarea) updateRocksTT,
    required TResult Function() invalidateRocks,
  }) {
    return updateRocks(subarea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
    TResult Function(Subarea subarea)? updateRocks,
    TResult Function(Subarea subarea)? updateRocksTT,
    TResult Function()? invalidateRocks,
    required TResult orElse(),
  }) {
    if (updateRocks != null) {
      return updateRocks(subarea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRocks value) requestRocks,
    required TResult Function(_UpdateRocks value) updateRocks,
    required TResult Function(_UpdateRocksTT value) updateRocksTT,
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) {
    return updateRocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
    TResult Function(_UpdateRocks value)? updateRocks,
    TResult Function(_UpdateRocksTT value)? updateRocksTT,
    TResult Function(_InvalidateRocks value)? invalidateRocks,
    required TResult orElse(),
  }) {
    if (updateRocks != null) {
      return updateRocks(this);
    }
    return orElse();
  }
}

abstract class _UpdateRocks implements RocksEvent {
  const factory _UpdateRocks(Subarea subarea) = _$_UpdateRocks;

  Subarea get subarea => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateRocksCopyWith<_UpdateRocks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateRocksTTCopyWith<$Res> {
  factory _$UpdateRocksTTCopyWith(
          _UpdateRocksTT value, $Res Function(_UpdateRocksTT) then) =
      __$UpdateRocksTTCopyWithImpl<$Res>;
  $Res call({Subarea subarea});

  $SubareaCopyWith<$Res> get subarea;
}

/// @nodoc
class __$UpdateRocksTTCopyWithImpl<$Res> extends _$RocksEventCopyWithImpl<$Res>
    implements _$UpdateRocksTTCopyWith<$Res> {
  __$UpdateRocksTTCopyWithImpl(
      _UpdateRocksTT _value, $Res Function(_UpdateRocksTT) _then)
      : super(_value, (v) => _then(v as _UpdateRocksTT));

  @override
  _UpdateRocksTT get _value => super._value as _UpdateRocksTT;

  @override
  $Res call({
    Object? subarea = freezed,
  }) {
    return _then(_UpdateRocksTT(
      subarea == freezed
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as Subarea,
    ));
  }

  @override
  $SubareaCopyWith<$Res> get subarea {
    return $SubareaCopyWith<$Res>(_value.subarea, (value) {
      return _then(_value.copyWith(subarea: value));
    });
  }
}

/// @nodoc

class _$_UpdateRocksTT implements _UpdateRocksTT {
  const _$_UpdateRocksTT(this.subarea);

  @override
  final Subarea subarea;

  @override
  String toString() {
    return 'RocksEvent.updateRocksTT(subarea: $subarea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateRocksTT &&
            (identical(other.subarea, subarea) ||
                const DeepCollectionEquality().equals(other.subarea, subarea)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subarea);

  @JsonKey(ignore: true)
  @override
  _$UpdateRocksTTCopyWith<_UpdateRocksTT> get copyWith =>
      __$UpdateRocksTTCopyWithImpl<_UpdateRocksTT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subarea subarea) requestRocks,
    required TResult Function(Subarea subarea) updateRocks,
    required TResult Function(Subarea subarea) updateRocksTT,
    required TResult Function() invalidateRocks,
  }) {
    return updateRocksTT(subarea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
    TResult Function(Subarea subarea)? updateRocks,
    TResult Function(Subarea subarea)? updateRocksTT,
    TResult Function()? invalidateRocks,
    required TResult orElse(),
  }) {
    if (updateRocksTT != null) {
      return updateRocksTT(subarea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRocks value) requestRocks,
    required TResult Function(_UpdateRocks value) updateRocks,
    required TResult Function(_UpdateRocksTT value) updateRocksTT,
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) {
    return updateRocksTT(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
    TResult Function(_UpdateRocks value)? updateRocks,
    TResult Function(_UpdateRocksTT value)? updateRocksTT,
    TResult Function(_InvalidateRocks value)? invalidateRocks,
    required TResult orElse(),
  }) {
    if (updateRocksTT != null) {
      return updateRocksTT(this);
    }
    return orElse();
  }
}

abstract class _UpdateRocksTT implements RocksEvent {
  const factory _UpdateRocksTT(Subarea subarea) = _$_UpdateRocksTT;

  Subarea get subarea => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateRocksTTCopyWith<_UpdateRocksTT> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidateRocksCopyWith<$Res> {
  factory _$InvalidateRocksCopyWith(
          _InvalidateRocks value, $Res Function(_InvalidateRocks) then) =
      __$InvalidateRocksCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidateRocksCopyWithImpl<$Res>
    extends _$RocksEventCopyWithImpl<$Res>
    implements _$InvalidateRocksCopyWith<$Res> {
  __$InvalidateRocksCopyWithImpl(
      _InvalidateRocks _value, $Res Function(_InvalidateRocks) _then)
      : super(_value, (v) => _then(v as _InvalidateRocks));

  @override
  _InvalidateRocks get _value => super._value as _InvalidateRocks;
}

/// @nodoc

class _$_InvalidateRocks implements _InvalidateRocks {
  const _$_InvalidateRocks();

  @override
  String toString() {
    return 'RocksEvent.invalidateRocks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidateRocks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subarea subarea) requestRocks,
    required TResult Function(Subarea subarea) updateRocks,
    required TResult Function(Subarea subarea) updateRocksTT,
    required TResult Function() invalidateRocks,
  }) {
    return invalidateRocks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
    TResult Function(Subarea subarea)? updateRocks,
    TResult Function(Subarea subarea)? updateRocksTT,
    TResult Function()? invalidateRocks,
    required TResult orElse(),
  }) {
    if (invalidateRocks != null) {
      return invalidateRocks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRocks value) requestRocks,
    required TResult Function(_UpdateRocks value) updateRocks,
    required TResult Function(_UpdateRocksTT value) updateRocksTT,
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) {
    return invalidateRocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
    TResult Function(_UpdateRocks value)? updateRocks,
    TResult Function(_UpdateRocksTT value)? updateRocksTT,
    TResult Function(_InvalidateRocks value)? invalidateRocks,
    required TResult orElse(),
  }) {
    if (invalidateRocks != null) {
      return invalidateRocks(this);
    }
    return orElse();
  }
}

abstract class _InvalidateRocks implements RocksEvent {
  const factory _InvalidateRocks() = _$_InvalidateRocks;
}

/// @nodoc
class _$RocksStateTearOff {
  const _$RocksStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _RocksReceived rocksReceived(Subarea subarea, List<Rock> rocks) {
    return _RocksReceived(
      subarea,
      rocks,
    );
  }

  _UpdateInProgress updateInProgress(String step, int percent) {
    return _UpdateInProgress(
      step,
      percent,
    );
  }

  _UpdateFinished updateFinished(int result) {
    return _UpdateFinished(
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
const $RocksState = _$RocksStateTearOff();

/// @nodoc
mixin _$RocksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocksStateCopyWith<$Res> {
  factory $RocksStateCopyWith(
          RocksState value, $Res Function(RocksState) then) =
      _$RocksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RocksStateCopyWithImpl<$Res> implements $RocksStateCopyWith<$Res> {
  _$RocksStateCopyWithImpl(this._value, this._then);

  final RocksState _value;
  // ignore: unused_field
  final $Res Function(RocksState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RocksStateCopyWithImpl<$Res>
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
    return 'RocksState.initial()';
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
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
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
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RocksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$RocksStateCopyWithImpl<$Res>
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
    return 'RocksState.inProgress()';
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
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
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
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements RocksState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$RocksReceivedCopyWith<$Res> {
  factory _$RocksReceivedCopyWith(
          _RocksReceived value, $Res Function(_RocksReceived) then) =
      __$RocksReceivedCopyWithImpl<$Res>;
  $Res call({Subarea subarea, List<Rock> rocks});

  $SubareaCopyWith<$Res> get subarea;
}

/// @nodoc
class __$RocksReceivedCopyWithImpl<$Res> extends _$RocksStateCopyWithImpl<$Res>
    implements _$RocksReceivedCopyWith<$Res> {
  __$RocksReceivedCopyWithImpl(
      _RocksReceived _value, $Res Function(_RocksReceived) _then)
      : super(_value, (v) => _then(v as _RocksReceived));

  @override
  _RocksReceived get _value => super._value as _RocksReceived;

  @override
  $Res call({
    Object? subarea = freezed,
    Object? rocks = freezed,
  }) {
    return _then(_RocksReceived(
      subarea == freezed
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as Subarea,
      rocks == freezed
          ? _value.rocks
          : rocks // ignore: cast_nullable_to_non_nullable
              as List<Rock>,
    ));
  }

  @override
  $SubareaCopyWith<$Res> get subarea {
    return $SubareaCopyWith<$Res>(_value.subarea, (value) {
      return _then(_value.copyWith(subarea: value));
    });
  }
}

/// @nodoc

class _$_RocksReceived implements _RocksReceived {
  const _$_RocksReceived(this.subarea, this.rocks);

  @override
  final Subarea subarea;
  @override
  final List<Rock> rocks;

  @override
  String toString() {
    return 'RocksState.rocksReceived(subarea: $subarea, rocks: $rocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RocksReceived &&
            (identical(other.subarea, subarea) ||
                const DeepCollectionEquality()
                    .equals(other.subarea, subarea)) &&
            (identical(other.rocks, rocks) ||
                const DeepCollectionEquality().equals(other.rocks, rocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subarea) ^
      const DeepCollectionEquality().hash(rocks);

  @JsonKey(ignore: true)
  @override
  _$RocksReceivedCopyWith<_RocksReceived> get copyWith =>
      __$RocksReceivedCopyWithImpl<_RocksReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return rocksReceived(subarea, rocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (rocksReceived != null) {
      return rocksReceived(subarea, rocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) {
    return rocksReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (rocksReceived != null) {
      return rocksReceived(this);
    }
    return orElse();
  }
}

abstract class _RocksReceived implements RocksState {
  const factory _RocksReceived(Subarea subarea, List<Rock> rocks) =
      _$_RocksReceived;

  Subarea get subarea => throw _privateConstructorUsedError;
  List<Rock> get rocks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RocksReceivedCopyWith<_RocksReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateInProgressCopyWith<$Res> {
  factory _$UpdateInProgressCopyWith(
          _UpdateInProgress value, $Res Function(_UpdateInProgress) then) =
      __$UpdateInProgressCopyWithImpl<$Res>;
  $Res call({String step, int percent});
}

/// @nodoc
class __$UpdateInProgressCopyWithImpl<$Res>
    extends _$RocksStateCopyWithImpl<$Res>
    implements _$UpdateInProgressCopyWith<$Res> {
  __$UpdateInProgressCopyWithImpl(
      _UpdateInProgress _value, $Res Function(_UpdateInProgress) _then)
      : super(_value, (v) => _then(v as _UpdateInProgress));

  @override
  _UpdateInProgress get _value => super._value as _UpdateInProgress;

  @override
  $Res call({
    Object? step = freezed,
    Object? percent = freezed,
  }) {
    return _then(_UpdateInProgress(
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

class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress(this.step, this.percent);

  @override
  final String step;
  @override
  final int percent;

  @override
  String toString() {
    return 'RocksState.updateInProgress(step: $step, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateInProgress &&
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
  _$UpdateInProgressCopyWith<_UpdateInProgress> get copyWith =>
      __$UpdateInProgressCopyWithImpl<_UpdateInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return updateInProgress(step, percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(step, percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress implements RocksState {
  const factory _UpdateInProgress(String step, int percent) =
      _$_UpdateInProgress;

  String get step => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateInProgressCopyWith<_UpdateInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFinishedCopyWith<$Res> {
  factory _$UpdateFinishedCopyWith(
          _UpdateFinished value, $Res Function(_UpdateFinished) then) =
      __$UpdateFinishedCopyWithImpl<$Res>;
  $Res call({int result});
}

/// @nodoc
class __$UpdateFinishedCopyWithImpl<$Res> extends _$RocksStateCopyWithImpl<$Res>
    implements _$UpdateFinishedCopyWith<$Res> {
  __$UpdateFinishedCopyWithImpl(
      _UpdateFinished _value, $Res Function(_UpdateFinished) _then)
      : super(_value, (v) => _then(v as _UpdateFinished));

  @override
  _UpdateFinished get _value => super._value as _UpdateFinished;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_UpdateFinished(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateFinished implements _UpdateFinished {
  const _$_UpdateFinished(this.result);

  @override
  final int result;

  @override
  String toString() {
    return 'RocksState.updateFinished(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFinished &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$UpdateFinishedCopyWith<_UpdateFinished> get copyWith =>
      __$UpdateFinishedCopyWithImpl<_UpdateFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return updateFinished(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (updateFinished != null) {
      return updateFinished(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) {
    return updateFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updateFinished != null) {
      return updateFinished(this);
    }
    return orElse();
  }
}

abstract class _UpdateFinished implements RocksState {
  const factory _UpdateFinished(int result) = _$_UpdateFinished;

  int get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateFinishedCopyWith<_UpdateFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({dynamic exception});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RocksStateCopyWithImpl<$Res>
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
    return 'RocksState.failure(exception: $exception)';
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
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RocksState {
  const factory _Failure(dynamic exception) = _$_Failure;

  dynamic get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
