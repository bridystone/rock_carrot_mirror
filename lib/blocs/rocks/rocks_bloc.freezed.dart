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
    required TResult Function() invalidateRocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
    TResult Function()? invalidateRocks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRocks value) requestRocks,
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
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
    required TResult Function() invalidateRocks,
  }) {
    return requestRocks(subarea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
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
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) {
    return requestRocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
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
    required TResult Function() invalidateRocks,
  }) {
    return invalidateRocks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subarea subarea)? requestRocks,
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
    required TResult Function(_InvalidateRocks value) invalidateRocks,
  }) {
    return invalidateRocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRocks value)? requestRocks,
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

  _Failure failure() {
    return const _Failure();
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
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RocksReceived value) rocksReceived,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RocksReceived value)? rocksReceived,
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
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
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
    required TResult Function(_RocksReceived value) rocksReceived,
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
    required TResult Function() failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
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
    required TResult Function(_RocksReceived value) rocksReceived,
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
    required TResult Function() failure,
  }) {
    return rocksReceived(subarea, rocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
    TResult Function()? failure,
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
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RocksStateCopyWithImpl<$Res>
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
    return 'RocksState.failure()';
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
    required TResult Function(Subarea subarea, List<Rock> rocks) rocksReceived,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Subarea subarea, List<Rock> rocks)? rocksReceived,
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
    required TResult Function(_RocksReceived value) rocksReceived,
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
  const factory _Failure() = _$_Failure;
}
