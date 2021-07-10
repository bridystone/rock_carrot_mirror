// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'routes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoutesEventTearOff {
  const _$RoutesEventTearOff();

  _RequestRoutes requestRoutes(Rock rock) {
    return _RequestRoutes(
      rock,
    );
  }

  _InvalidateRoutes invalidateRoutes() {
    return const _InvalidateRoutes();
  }
}

/// @nodoc
const $RoutesEvent = _$RoutesEventTearOff();

/// @nodoc
mixin _$RoutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rock rock) requestRoutes,
    required TResult Function() invalidateRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rock rock)? requestRoutes,
    TResult Function()? invalidateRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRoutes value) requestRoutes,
    required TResult Function(_InvalidateRoutes value) invalidateRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRoutes value)? requestRoutes,
    TResult Function(_InvalidateRoutes value)? invalidateRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesEventCopyWith<$Res> {
  factory $RoutesEventCopyWith(
          RoutesEvent value, $Res Function(RoutesEvent) then) =
      _$RoutesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesEventCopyWithImpl<$Res> implements $RoutesEventCopyWith<$Res> {
  _$RoutesEventCopyWithImpl(this._value, this._then);

  final RoutesEvent _value;
  // ignore: unused_field
  final $Res Function(RoutesEvent) _then;
}

/// @nodoc
abstract class _$RequestRoutesCopyWith<$Res> {
  factory _$RequestRoutesCopyWith(
          _RequestRoutes value, $Res Function(_RequestRoutes) then) =
      __$RequestRoutesCopyWithImpl<$Res>;
  $Res call({Rock rock});

  $RockCopyWith<$Res> get rock;
}

/// @nodoc
class __$RequestRoutesCopyWithImpl<$Res> extends _$RoutesEventCopyWithImpl<$Res>
    implements _$RequestRoutesCopyWith<$Res> {
  __$RequestRoutesCopyWithImpl(
      _RequestRoutes _value, $Res Function(_RequestRoutes) _then)
      : super(_value, (v) => _then(v as _RequestRoutes));

  @override
  _RequestRoutes get _value => super._value as _RequestRoutes;

  @override
  $Res call({
    Object? rock = freezed,
  }) {
    return _then(_RequestRoutes(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Rock,
    ));
  }

  @override
  $RockCopyWith<$Res> get rock {
    return $RockCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_RequestRoutes implements _RequestRoutes {
  const _$_RequestRoutes(this.rock);

  @override
  final Rock rock;

  @override
  String toString() {
    return 'RoutesEvent.requestRoutes(rock: $rock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestRoutes &&
            (identical(other.rock, rock) ||
                const DeepCollectionEquality().equals(other.rock, rock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rock);

  @JsonKey(ignore: true)
  @override
  _$RequestRoutesCopyWith<_RequestRoutes> get copyWith =>
      __$RequestRoutesCopyWithImpl<_RequestRoutes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rock rock) requestRoutes,
    required TResult Function() invalidateRoutes,
  }) {
    return requestRoutes(rock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rock rock)? requestRoutes,
    TResult Function()? invalidateRoutes,
    required TResult orElse(),
  }) {
    if (requestRoutes != null) {
      return requestRoutes(rock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRoutes value) requestRoutes,
    required TResult Function(_InvalidateRoutes value) invalidateRoutes,
  }) {
    return requestRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRoutes value)? requestRoutes,
    TResult Function(_InvalidateRoutes value)? invalidateRoutes,
    required TResult orElse(),
  }) {
    if (requestRoutes != null) {
      return requestRoutes(this);
    }
    return orElse();
  }
}

abstract class _RequestRoutes implements RoutesEvent {
  const factory _RequestRoutes(Rock rock) = _$_RequestRoutes;

  Rock get rock => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestRoutesCopyWith<_RequestRoutes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidateRoutesCopyWith<$Res> {
  factory _$InvalidateRoutesCopyWith(
          _InvalidateRoutes value, $Res Function(_InvalidateRoutes) then) =
      __$InvalidateRoutesCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidateRoutesCopyWithImpl<$Res>
    extends _$RoutesEventCopyWithImpl<$Res>
    implements _$InvalidateRoutesCopyWith<$Res> {
  __$InvalidateRoutesCopyWithImpl(
      _InvalidateRoutes _value, $Res Function(_InvalidateRoutes) _then)
      : super(_value, (v) => _then(v as _InvalidateRoutes));

  @override
  _InvalidateRoutes get _value => super._value as _InvalidateRoutes;
}

/// @nodoc

class _$_InvalidateRoutes implements _InvalidateRoutes {
  const _$_InvalidateRoutes();

  @override
  String toString() {
    return 'RoutesEvent.invalidateRoutes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidateRoutes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rock rock) requestRoutes,
    required TResult Function() invalidateRoutes,
  }) {
    return invalidateRoutes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rock rock)? requestRoutes,
    TResult Function()? invalidateRoutes,
    required TResult orElse(),
  }) {
    if (invalidateRoutes != null) {
      return invalidateRoutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestRoutes value) requestRoutes,
    required TResult Function(_InvalidateRoutes value) invalidateRoutes,
  }) {
    return invalidateRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestRoutes value)? requestRoutes,
    TResult Function(_InvalidateRoutes value)? invalidateRoutes,
    required TResult orElse(),
  }) {
    if (invalidateRoutes != null) {
      return invalidateRoutes(this);
    }
    return orElse();
  }
}

abstract class _InvalidateRoutes implements RoutesEvent {
  const factory _InvalidateRoutes() = _$_InvalidateRoutes;
}

/// @nodoc
class _$RoutesStateTearOff {
  const _$RoutesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _RoutesReceived routesReceived(Rock rock, List<Route> routes) {
    return _RoutesReceived(
      rock,
      routes,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $RoutesState = _$RoutesStateTearOff();

/// @nodoc
mixin _$RoutesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Rock rock, List<Route> routes) routesReceived,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Rock rock, List<Route> routes)? routesReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RoutesReceived value) routesReceived,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RoutesReceived value)? routesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesStateCopyWith<$Res> {
  factory $RoutesStateCopyWith(
          RoutesState value, $Res Function(RoutesState) then) =
      _$RoutesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesStateCopyWithImpl<$Res> implements $RoutesStateCopyWith<$Res> {
  _$RoutesStateCopyWithImpl(this._value, this._then);

  final RoutesState _value;
  // ignore: unused_field
  final $Res Function(RoutesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
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
    return 'RoutesState.initial()';
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
    required TResult Function(Rock rock, List<Route> routes) routesReceived,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Rock rock, List<Route> routes)? routesReceived,
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
    required TResult Function(_RoutesReceived value) routesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RoutesReceived value)? routesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoutesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
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
    return 'RoutesState.inProgress()';
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
    required TResult Function(Rock rock, List<Route> routes) routesReceived,
    required TResult Function() failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Rock rock, List<Route> routes)? routesReceived,
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
    required TResult Function(_RoutesReceived value) routesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RoutesReceived value)? routesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements RoutesState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$RoutesReceivedCopyWith<$Res> {
  factory _$RoutesReceivedCopyWith(
          _RoutesReceived value, $Res Function(_RoutesReceived) then) =
      __$RoutesReceivedCopyWithImpl<$Res>;
  $Res call({Rock rock, List<Route> routes});

  $RockCopyWith<$Res> get rock;
}

/// @nodoc
class __$RoutesReceivedCopyWithImpl<$Res>
    extends _$RoutesStateCopyWithImpl<$Res>
    implements _$RoutesReceivedCopyWith<$Res> {
  __$RoutesReceivedCopyWithImpl(
      _RoutesReceived _value, $Res Function(_RoutesReceived) _then)
      : super(_value, (v) => _then(v as _RoutesReceived));

  @override
  _RoutesReceived get _value => super._value as _RoutesReceived;

  @override
  $Res call({
    Object? rock = freezed,
    Object? routes = freezed,
  }) {
    return _then(_RoutesReceived(
      rock == freezed
          ? _value.rock
          : rock // ignore: cast_nullable_to_non_nullable
              as Rock,
      routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>,
    ));
  }

  @override
  $RockCopyWith<$Res> get rock {
    return $RockCopyWith<$Res>(_value.rock, (value) {
      return _then(_value.copyWith(rock: value));
    });
  }
}

/// @nodoc

class _$_RoutesReceived implements _RoutesReceived {
  const _$_RoutesReceived(this.rock, this.routes);

  @override
  final Rock rock;
  @override
  final List<Route> routes;

  @override
  String toString() {
    return 'RoutesState.routesReceived(rock: $rock, routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoutesReceived &&
            (identical(other.rock, rock) ||
                const DeepCollectionEquality().equals(other.rock, rock)) &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rock) ^
      const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  _$RoutesReceivedCopyWith<_RoutesReceived> get copyWith =>
      __$RoutesReceivedCopyWithImpl<_RoutesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Rock rock, List<Route> routes) routesReceived,
    required TResult Function() failure,
  }) {
    return routesReceived(rock, routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Rock rock, List<Route> routes)? routesReceived,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (routesReceived != null) {
      return routesReceived(rock, routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_RoutesReceived value) routesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return routesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RoutesReceived value)? routesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (routesReceived != null) {
      return routesReceived(this);
    }
    return orElse();
  }
}

abstract class _RoutesReceived implements RoutesState {
  const factory _RoutesReceived(Rock rock, List<Route> routes) =
      _$_RoutesReceived;

  Rock get rock => throw _privateConstructorUsedError;
  List<Route> get routes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RoutesReceivedCopyWith<_RoutesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
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
    return 'RoutesState.failure()';
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
    required TResult Function(Rock rock, List<Route> routes) routesReceived,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Rock rock, List<Route> routes)? routesReceived,
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
    required TResult Function(_RoutesReceived value) routesReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_RoutesReceived value)? routesReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RoutesState {
  const factory _Failure() = _$_Failure;
}
