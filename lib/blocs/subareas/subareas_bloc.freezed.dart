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

  _UpdateSubareas updateSubareas(Area area) {
    return _UpdateSubareas(
      area,
    );
  }

  _UpdateSubareasInklSubitems updateSubareasInklSubitems(Area area) {
    return _UpdateSubareasInklSubitems(
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
    required TResult Function(Area area) updateSubareas,
    required TResult Function(Area area) updateSubareasInklSubitems,
    required TResult Function() invalidateSubareas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function(Area area)? updateSubareas,
    TResult Function(Area area)? updateSubareasInklSubitems,
    TResult Function()? invalidateSubareas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestSubareas value) requestSubareas,
    required TResult Function(_UpdateSubareas value) updateSubareas,
    required TResult Function(_UpdateSubareasInklSubitems value)
        updateSubareasInklSubitems,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_UpdateSubareas value)? updateSubareas,
    TResult Function(_UpdateSubareasInklSubitems value)?
        updateSubareasInklSubitems,
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
    required TResult Function(Area area) updateSubareas,
    required TResult Function(Area area) updateSubareasInklSubitems,
    required TResult Function() invalidateSubareas,
  }) {
    return requestSubareas(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function(Area area)? updateSubareas,
    TResult Function(Area area)? updateSubareasInklSubitems,
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
    required TResult Function(_UpdateSubareas value) updateSubareas,
    required TResult Function(_UpdateSubareasInklSubitems value)
        updateSubareasInklSubitems,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) {
    return requestSubareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_UpdateSubareas value)? updateSubareas,
    TResult Function(_UpdateSubareasInklSubitems value)?
        updateSubareasInklSubitems,
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
abstract class _$UpdateSubareasCopyWith<$Res> {
  factory _$UpdateSubareasCopyWith(
          _UpdateSubareas value, $Res Function(_UpdateSubareas) then) =
      __$UpdateSubareasCopyWithImpl<$Res>;
  $Res call({Area area});

  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class __$UpdateSubareasCopyWithImpl<$Res>
    extends _$SubareasEventCopyWithImpl<$Res>
    implements _$UpdateSubareasCopyWith<$Res> {
  __$UpdateSubareasCopyWithImpl(
      _UpdateSubareas _value, $Res Function(_UpdateSubareas) _then)
      : super(_value, (v) => _then(v as _UpdateSubareas));

  @override
  _UpdateSubareas get _value => super._value as _UpdateSubareas;

  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_UpdateSubareas(
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

class _$_UpdateSubareas implements _UpdateSubareas {
  const _$_UpdateSubareas(this.area);

  @override
  final Area area;

  @override
  String toString() {
    return 'SubareasEvent.updateSubareas(area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSubareas &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(area);

  @JsonKey(ignore: true)
  @override
  _$UpdateSubareasCopyWith<_UpdateSubareas> get copyWith =>
      __$UpdateSubareasCopyWithImpl<_UpdateSubareas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area area) requestSubareas,
    required TResult Function(Area area) updateSubareas,
    required TResult Function(Area area) updateSubareasInklSubitems,
    required TResult Function() invalidateSubareas,
  }) {
    return updateSubareas(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function(Area area)? updateSubareas,
    TResult Function(Area area)? updateSubareasInklSubitems,
    TResult Function()? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (updateSubareas != null) {
      return updateSubareas(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestSubareas value) requestSubareas,
    required TResult Function(_UpdateSubareas value) updateSubareas,
    required TResult Function(_UpdateSubareasInklSubitems value)
        updateSubareasInklSubitems,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) {
    return updateSubareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_UpdateSubareas value)? updateSubareas,
    TResult Function(_UpdateSubareasInklSubitems value)?
        updateSubareasInklSubitems,
    TResult Function(_InvalidateSubareas value)? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (updateSubareas != null) {
      return updateSubareas(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubareas implements SubareasEvent {
  const factory _UpdateSubareas(Area area) = _$_UpdateSubareas;

  Area get area => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateSubareasCopyWith<_UpdateSubareas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSubareasInklSubitemsCopyWith<$Res> {
  factory _$UpdateSubareasInklSubitemsCopyWith(
          _UpdateSubareasInklSubitems value,
          $Res Function(_UpdateSubareasInklSubitems) then) =
      __$UpdateSubareasInklSubitemsCopyWithImpl<$Res>;
  $Res call({Area area});

  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class __$UpdateSubareasInklSubitemsCopyWithImpl<$Res>
    extends _$SubareasEventCopyWithImpl<$Res>
    implements _$UpdateSubareasInklSubitemsCopyWith<$Res> {
  __$UpdateSubareasInklSubitemsCopyWithImpl(_UpdateSubareasInklSubitems _value,
      $Res Function(_UpdateSubareasInklSubitems) _then)
      : super(_value, (v) => _then(v as _UpdateSubareasInklSubitems));

  @override
  _UpdateSubareasInklSubitems get _value =>
      super._value as _UpdateSubareasInklSubitems;

  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_UpdateSubareasInklSubitems(
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

class _$_UpdateSubareasInklSubitems implements _UpdateSubareasInklSubitems {
  const _$_UpdateSubareasInklSubitems(this.area);

  @override
  final Area area;

  @override
  String toString() {
    return 'SubareasEvent.updateSubareasInklSubitems(area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSubareasInklSubitems &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(area);

  @JsonKey(ignore: true)
  @override
  _$UpdateSubareasInklSubitemsCopyWith<_UpdateSubareasInklSubitems>
      get copyWith => __$UpdateSubareasInklSubitemsCopyWithImpl<
          _UpdateSubareasInklSubitems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area area) requestSubareas,
    required TResult Function(Area area) updateSubareas,
    required TResult Function(Area area) updateSubareasInklSubitems,
    required TResult Function() invalidateSubareas,
  }) {
    return updateSubareasInklSubitems(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function(Area area)? updateSubareas,
    TResult Function(Area area)? updateSubareasInklSubitems,
    TResult Function()? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (updateSubareasInklSubitems != null) {
      return updateSubareasInklSubitems(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestSubareas value) requestSubareas,
    required TResult Function(_UpdateSubareas value) updateSubareas,
    required TResult Function(_UpdateSubareasInklSubitems value)
        updateSubareasInklSubitems,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) {
    return updateSubareasInklSubitems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_UpdateSubareas value)? updateSubareas,
    TResult Function(_UpdateSubareasInklSubitems value)?
        updateSubareasInklSubitems,
    TResult Function(_InvalidateSubareas value)? invalidateSubareas,
    required TResult orElse(),
  }) {
    if (updateSubareasInklSubitems != null) {
      return updateSubareasInklSubitems(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubareasInklSubitems implements SubareasEvent {
  const factory _UpdateSubareasInklSubitems(Area area) =
      _$_UpdateSubareasInklSubitems;

  Area get area => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateSubareasInklSubitemsCopyWith<_UpdateSubareasInklSubitems>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(Area area) updateSubareas,
    required TResult Function(Area area) updateSubareasInklSubitems,
    required TResult Function() invalidateSubareas,
  }) {
    return invalidateSubareas();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area area)? requestSubareas,
    TResult Function(Area area)? updateSubareas,
    TResult Function(Area area)? updateSubareasInklSubitems,
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
    required TResult Function(_UpdateSubareas value) updateSubareas,
    required TResult Function(_UpdateSubareasInklSubitems value)
        updateSubareasInklSubitems,
    required TResult Function(_InvalidateSubareas value) invalidateSubareas,
  }) {
    return invalidateSubareas(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestSubareas value)? requestSubareas,
    TResult Function(_UpdateSubareas value)? updateSubareas,
    TResult Function(_UpdateSubareasInklSubitems value)?
        updateSubareasInklSubitems,
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
const $SubareasState = _$SubareasStateTearOff();

/// @nodoc
mixin _$SubareasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_SubareasReceived value)? subareasReceived,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
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
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
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
    TResult Function(_SubareasReceived value)? subareasReceived,
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
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
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
    TResult Function(_SubareasReceived value)? subareasReceived,
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
    required TResult Function(String step, int percent) updateInProgress,
    required TResult Function(int result) updateFinished,
    required TResult Function(dynamic exception) failure,
  }) {
    return subareasReceived(area, subareas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
    TResult Function(String step, int percent)? updateInProgress,
    TResult Function(int result)? updateFinished,
    TResult Function(dynamic exception)? failure,
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
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
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
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
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
abstract class _$UpdateInProgressCopyWith<$Res> {
  factory _$UpdateInProgressCopyWith(
          _UpdateInProgress value, $Res Function(_UpdateInProgress) then) =
      __$UpdateInProgressCopyWithImpl<$Res>;
  $Res call({String step, int percent});
}

/// @nodoc
class __$UpdateInProgressCopyWithImpl<$Res>
    extends _$SubareasStateCopyWithImpl<$Res>
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
    return 'SubareasState.updateInProgress(step: $step, percent: $percent)';
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
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
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
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
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
    TResult Function(_SubareasReceived value)? subareasReceived,
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

abstract class _UpdateInProgress implements SubareasState {
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
class __$UpdateFinishedCopyWithImpl<$Res>
    extends _$SubareasStateCopyWithImpl<$Res>
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
    return 'SubareasState.updateFinished(result: $result)';
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
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
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
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
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
    TResult Function(_SubareasReceived value)? subareasReceived,
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

abstract class _UpdateFinished implements SubareasState {
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
class __$FailureCopyWithImpl<$Res> extends _$SubareasStateCopyWithImpl<$Res>
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
    return 'SubareasState.failure(exception: $exception)';
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
    required TResult Function(Area area, List<Subarea> subareas)
        subareasReceived,
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
    TResult Function(Area area, List<Subarea> subareas)? subareasReceived,
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
    required TResult Function(_SubareasReceived value) subareasReceived,
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
    TResult Function(_SubareasReceived value)? subareasReceived,
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

abstract class _Failure implements SubareasState {
  const factory _Failure(dynamic exception) = _$_Failure;

  dynamic get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
