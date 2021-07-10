// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subareas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubareasEventTearOff {
  const _$SubareasEventTearOff();

  _RequestSubareas requestSubareas(Area area) {
    return _RequestSubareas(
      area,
    );
  }

  _InvalidateSubareas invalidateSubareas() {
    return const _InvalidateSubareas();
  }
}

/// @nodoc
const $SubareasEvent = _$SubareasEventTearOff();

/// @nodoc
mixin _$SubareasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area area) requestSubareas,
    required TResult Function() invalidateSubareas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function()? invalidateSubareas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestSubareas value) requestSubareas,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_InvalidateSubareas value)? invalidateSubareas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubareasEventCopyWith<$Res> {
  factory $SubareasEventCopyWith(
          SubareasEvent value, $Res Function(SubareasEvent) then) =
      _$SubareasEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubareasEventCopyWithImpl<$Res>
    implements $SubareasEventCopyWith<$Res> {
  _$SubareasEventCopyWithImpl(this._value, this._then);

  final SubareasEvent _value;
  // ignore: unused_field
  final $Res Function(SubareasEvent) _then;
}

/// @nodoc
abstract class _$RequestSubareasCopyWith<$Res> {
  factory _$RequestSubareasCopyWith(
          _RequestSubareas value, $Res Function(_RequestSubareas) then) =
      __$RequestSubareasCopyWithImpl<$Res>;
  $Res call({Area area});

  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class __$RequestSubareasCopyWithImpl<$Res>
    extends _$SubareasEventCopyWithImpl<$Res>
    implements _$RequestSubareasCopyWith<$Res> {
  __$RequestSubareasCopyWithImpl(
      _RequestSubareas _value, $Res Function(_RequestSubareas) _then)
      : super(_value, (v) => _then(v as _RequestSubareas));

  @override
  _RequestSubareas get _value => super._value as _RequestSubareas;

  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_RequestSubareas(
      area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
    ));
  }

  @override
  $AreaCopyWith<$Res> get area {
    return $AreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc

class _$_RequestSubareas implements _RequestSubareas {
  const _$_RequestSubareas(this.area);

  @override
  final Area area;

  @override
  String toString() {
    return 'SubareasEvent.requestSubareas(area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSubareas &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(area);

  @JsonKey(ignore: true)
  @override
  _$RequestSubareasCopyWith<_RequestSubareas> get copyWith =>
      __$RequestSubareasCopyWithImpl<_RequestSubareas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area area) requestSubareas,
    required TResult Function() invalidateSubareas,
  }) {
    return requestSubareas(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function()? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (requestSubareas != null) {
      return requestSubareas(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestSubareas value) requestSubareas,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) {
    return requestSubareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_InvalidateSubareas value)? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (requestSubareas != null) {
      return requestSubareas(this);
    }
    return orElse();
  }
}

abstract class _RequestSubareas implements SubareasEvent {
  const factory _RequestSubareas(Area area) = _$_RequestSubareas;

  Area get area => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestSubareasCopyWith<_RequestSubareas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidateSubareasCopyWith<$Res> {
  factory _$InvalidateSubareasCopyWith(
          _InvalidateSubareas value, $Res Function(_InvalidateSubareas) then) =
      __$InvalidateSubareasCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidateSubareasCopyWithImpl<$Res>
    extends _$SubareasEventCopyWithImpl<$Res>
    implements _$InvalidateSubareasCopyWith<$Res> {
  __$InvalidateSubareasCopyWithImpl(
      _InvalidateSubareas _value, $Res Function(_InvalidateSubareas) _then)
      : super(_value, (v) => _then(v as _InvalidateSubareas));

  @override
  _InvalidateSubareas get _value => super._value as _InvalidateSubareas;
}

/// @nodoc

class _$_InvalidateSubareas implements _InvalidateSubareas {
  const _$_InvalidateSubareas();

  @override
  String toString() {
    return 'SubareasEvent.invalidateSubareas()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidateSubareas);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area area) requestSubareas,
    required TResult Function() invalidateSubareas,
  }) {
    return invalidateSubareas();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function()? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (invalidateSubareas != null) {
      return invalidateSubareas();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestSubareas value) requestSubareas,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) {
    return invalidateSubareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_InvalidateSubareas value)? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (invalidateSubareas != null) {
      return invalidateSubareas(this);
    }
    return orElse();
  }
}

abstract class _InvalidateSubareas implements SubareasEvent {
  const factory _InvalidateSubareas() = _$_InvalidateSubareas;
}

/// @nodoc
class _$SubareasStateTearOff {
  const _$SubareasStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _SubareasReceived subareasReceived(Area area, List<Subarea> subareas) {
    return _SubareasReceived(
      area,
      subareas,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $SubareasState = _$SubareasStateTearOff();

/// @nodoc
mixin _$SubareasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_SubareasReceived value) subareasReceived,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_SubareasReceived value)? subareasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubareasStateCopyWith<$Res> {
  factory $SubareasStateCopyWith(
          SubareasState value, $Res Function(SubareasState) then) =
      _$SubareasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubareasStateCopyWithImpl<$Res>
    implements $SubareasStateCopyWith<$Res> {
  _$SubareasStateCopyWithImpl(this._value, this._then);

  final SubareasState _value;
  // ignore: unused_field
  final $Res Function(SubareasState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SubareasStateCopyWithImpl<$Res>
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
    return 'SubareasState.initial()';
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
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_SubareasReceived value)? subareasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubareasState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$SubareasStateCopyWithImpl<$Res>
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
    return 'SubareasState.inProgress()';
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
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
    required TResult Function() failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_SubareasReceived value)? subareasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements SubareasState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$SubareasReceivedCopyWith<$Res> {
  factory _$SubareasReceivedCopyWith(
          _SubareasReceived value, $Res Function(_SubareasReceived) then) =
      __$SubareasReceivedCopyWithImpl<$Res>;
  $Res call({Area area, List<Subarea> subareas});

  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class __$SubareasReceivedCopyWithImpl<$Res>
    extends _$SubareasStateCopyWithImpl<$Res>
    implements _$SubareasReceivedCopyWith<$Res> {
  __$SubareasReceivedCopyWithImpl(
      _SubareasReceived _value, $Res Function(_SubareasReceived) _then)
      : super(_value, (v) => _then(v as _SubareasReceived));

  @override
  _SubareasReceived get _value => super._value as _SubareasReceived;

  @override
  $Res call({
    Object? area = freezed,
    Object? subareas = freezed,
  }) {
    return _then(_SubareasReceived(
      area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      subareas == freezed
          ? _value.subareas
          : subareas // ignore: cast_nullable_to_non_nullable
              as List<Subarea>,
    ));
  }

  @override
  $AreaCopyWith<$Res> get area {
    return $AreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc

class _$_SubareasReceived implements _SubareasReceived {
  const _$_SubareasReceived(this.area, this.subareas);

  @override
  final Area area;
  @override
  final List<Subarea> subareas;

  @override
  String toString() {
    return 'SubareasState.subareasReceived(area: $area, subareas: $subareas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubareasReceived &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.subareas, subareas) ||
                const DeepCollectionEquality()
                    .equals(other.subareas, subareas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(subareas);

  @JsonKey(ignore: true)
  @override
  _$SubareasReceivedCopyWith<_SubareasReceived> get copyWith =>
      __$SubareasReceivedCopyWithImpl<_SubareasReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
    required TResult Function() failure,
  }) {
    return subareasReceived(area, subareas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (subareasReceived != null) {
      return subareasReceived(area, subareas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_SubareasReceived value) subareasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return subareasReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_SubareasReceived value)? subareasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (subareasReceived != null) {
      return subareasReceived(this);
    }
    return orElse();
  }
}

abstract class _SubareasReceived implements SubareasState {
  const factory _SubareasReceived(Area area, List<Subarea> subareas) =
      _$_SubareasReceived;

  Area get area => throw _privateConstructorUsedError;
  List<Subarea> get subareas => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubareasReceivedCopyWith<_SubareasReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SubareasStateCopyWithImpl<$Res>
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
    return 'SubareasState.failure()';
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
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_SubareasReceived value)? subareasReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SubareasState {
  const factory _Failure() = _$_Failure;
}
