// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filtered_routes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredRoutesEventTearOff {
  const _$FilteredRoutesEventTearOff();

  _FilterUpdated filterUpdated(String? newFilter) {
    return _FilterUpdated(
      newFilter,
    );
  }

  _SortingUpdated sortingUpdated(RoutesSorting newSorting) {
    return _SortingUpdated(
      newSorting,
    );
  }

  _RoutesUpdated routesUpdated(List<Route> routes) {
    return _RoutesUpdated(
      routes,
    );
  }
}

/// @nodoc
const $FilteredRoutesEvent = _$FilteredRoutesEventTearOff();

/// @nodoc
mixin _$FilteredRoutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(RoutesSorting newSorting) sortingUpdated,
    required TResult Function(List<Route> routes) routesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RoutesSorting newSorting)? sortingUpdated,
    TResult Function(List<Route> routes)? routesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_RoutesUpdated value) routesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RoutesUpdated value)? routesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredRoutesEventCopyWith<$Res> {
  factory $FilteredRoutesEventCopyWith(
          FilteredRoutesEvent value, $Res Function(FilteredRoutesEvent) then) =
      _$FilteredRoutesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredRoutesEventCopyWithImpl<$Res>
    implements $FilteredRoutesEventCopyWith<$Res> {
  _$FilteredRoutesEventCopyWithImpl(this._value, this._then);

  final FilteredRoutesEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredRoutesEvent) _then;
}

/// @nodoc
abstract class _$FilterUpdatedCopyWith<$Res> {
  factory _$FilterUpdatedCopyWith(
          _FilterUpdated value, $Res Function(_FilterUpdated) then) =
      __$FilterUpdatedCopyWithImpl<$Res>;
  $Res call({String? newFilter});
}

/// @nodoc
class __$FilterUpdatedCopyWithImpl<$Res>
    extends _$FilteredRoutesEventCopyWithImpl<$Res>
    implements _$FilterUpdatedCopyWith<$Res> {
  __$FilterUpdatedCopyWithImpl(
      _FilterUpdated _value, $Res Function(_FilterUpdated) _then)
      : super(_value, (v) => _then(v as _FilterUpdated));

  @override
  _FilterUpdated get _value => super._value as _FilterUpdated;

  @override
  $Res call({
    Object? newFilter = freezed,
  }) {
    return _then(_FilterUpdated(
      newFilter == freezed
          ? _value.newFilter
          : newFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FilterUpdated implements _FilterUpdated {
  const _$_FilterUpdated(this.newFilter);

  @override
  final String? newFilter;

  @override
  String toString() {
    return 'FilteredRoutesEvent.filterUpdated(newFilter: $newFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterUpdated &&
            (identical(other.newFilter, newFilter) ||
                const DeepCollectionEquality()
                    .equals(other.newFilter, newFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newFilter);

  @JsonKey(ignore: true)
  @override
  _$FilterUpdatedCopyWith<_FilterUpdated> get copyWith =>
      __$FilterUpdatedCopyWithImpl<_FilterUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(RoutesSorting newSorting) sortingUpdated,
    required TResult Function(List<Route> routes) routesUpdated,
  }) {
    return filterUpdated(newFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RoutesSorting newSorting)? sortingUpdated,
    TResult Function(List<Route> routes)? routesUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(newFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_RoutesUpdated value) routesUpdated,
  }) {
    return filterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RoutesUpdated value)? routesUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(this);
    }
    return orElse();
  }
}

abstract class _FilterUpdated implements FilteredRoutesEvent {
  const factory _FilterUpdated(String? newFilter) = _$_FilterUpdated;

  String? get newFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FilterUpdatedCopyWith<_FilterUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SortingUpdatedCopyWith<$Res> {
  factory _$SortingUpdatedCopyWith(
          _SortingUpdated value, $Res Function(_SortingUpdated) then) =
      __$SortingUpdatedCopyWithImpl<$Res>;
  $Res call({RoutesSorting newSorting});
}

/// @nodoc
class __$SortingUpdatedCopyWithImpl<$Res>
    extends _$FilteredRoutesEventCopyWithImpl<$Res>
    implements _$SortingUpdatedCopyWith<$Res> {
  __$SortingUpdatedCopyWithImpl(
      _SortingUpdated _value, $Res Function(_SortingUpdated) _then)
      : super(_value, (v) => _then(v as _SortingUpdated));

  @override
  _SortingUpdated get _value => super._value as _SortingUpdated;

  @override
  $Res call({
    Object? newSorting = freezed,
  }) {
    return _then(_SortingUpdated(
      newSorting == freezed
          ? _value.newSorting
          : newSorting // ignore: cast_nullable_to_non_nullable
              as RoutesSorting,
    ));
  }
}

/// @nodoc

class _$_SortingUpdated implements _SortingUpdated {
  const _$_SortingUpdated(this.newSorting);

  @override
  final RoutesSorting newSorting;

  @override
  String toString() {
    return 'FilteredRoutesEvent.sortingUpdated(newSorting: $newSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortingUpdated &&
            (identical(other.newSorting, newSorting) ||
                const DeepCollectionEquality()
                    .equals(other.newSorting, newSorting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newSorting);

  @JsonKey(ignore: true)
  @override
  _$SortingUpdatedCopyWith<_SortingUpdated> get copyWith =>
      __$SortingUpdatedCopyWithImpl<_SortingUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(RoutesSorting newSorting) sortingUpdated,
    required TResult Function(List<Route> routes) routesUpdated,
  }) {
    return sortingUpdated(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RoutesSorting newSorting)? sortingUpdated,
    TResult Function(List<Route> routes)? routesUpdated,
    required TResult orElse(),
  }) {
    if (sortingUpdated != null) {
      return sortingUpdated(newSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_RoutesUpdated value) routesUpdated,
  }) {
    return sortingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RoutesUpdated value)? routesUpdated,
    required TResult orElse(),
  }) {
    if (sortingUpdated != null) {
      return sortingUpdated(this);
    }
    return orElse();
  }
}

abstract class _SortingUpdated implements FilteredRoutesEvent {
  const factory _SortingUpdated(RoutesSorting newSorting) = _$_SortingUpdated;

  RoutesSorting get newSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SortingUpdatedCopyWith<_SortingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RoutesUpdatedCopyWith<$Res> {
  factory _$RoutesUpdatedCopyWith(
          _RoutesUpdated value, $Res Function(_RoutesUpdated) then) =
      __$RoutesUpdatedCopyWithImpl<$Res>;
  $Res call({List<Route> routes});
}

/// @nodoc
class __$RoutesUpdatedCopyWithImpl<$Res>
    extends _$FilteredRoutesEventCopyWithImpl<$Res>
    implements _$RoutesUpdatedCopyWith<$Res> {
  __$RoutesUpdatedCopyWithImpl(
      _RoutesUpdated _value, $Res Function(_RoutesUpdated) _then)
      : super(_value, (v) => _then(v as _RoutesUpdated));

  @override
  _RoutesUpdated get _value => super._value as _RoutesUpdated;

  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_RoutesUpdated(
      routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>,
    ));
  }
}

/// @nodoc

class _$_RoutesUpdated implements _RoutesUpdated {
  const _$_RoutesUpdated(this.routes);

  @override
  final List<Route> routes;

  @override
  String toString() {
    return 'FilteredRoutesEvent.routesUpdated(routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoutesUpdated &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  _$RoutesUpdatedCopyWith<_RoutesUpdated> get copyWith =>
      __$RoutesUpdatedCopyWithImpl<_RoutesUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(RoutesSorting newSorting) sortingUpdated,
    required TResult Function(List<Route> routes) routesUpdated,
  }) {
    return routesUpdated(routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RoutesSorting newSorting)? sortingUpdated,
    TResult Function(List<Route> routes)? routesUpdated,
    required TResult orElse(),
  }) {
    if (routesUpdated != null) {
      return routesUpdated(routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_RoutesUpdated value) routesUpdated,
  }) {
    return routesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RoutesUpdated value)? routesUpdated,
    required TResult orElse(),
  }) {
    if (routesUpdated != null) {
      return routesUpdated(this);
    }
    return orElse();
  }
}

abstract class _RoutesUpdated implements FilteredRoutesEvent {
  const factory _RoutesUpdated(List<Route> routes) = _$_RoutesUpdated;

  List<Route> get routes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RoutesUpdatedCopyWith<_RoutesUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilteredRoutesStateTearOff {
  const _$FilteredRoutesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ReadyForUI readyForUI(List<Route> filteredRoutes, String? activeFilter,
      RoutesSorting activeSorting) {
    return _ReadyForUI(
      filteredRoutes,
      activeFilter,
      activeSorting,
    );
  }
}

/// @nodoc
const $FilteredRoutesState = _$FilteredRoutesStateTearOff();

/// @nodoc
mixin _$FilteredRoutesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Route> filteredRoutes, String? activeFilter,
            RoutesSorting activeSorting)
        readyForUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Route> filteredRoutes, String? activeFilter,
            RoutesSorting activeSorting)?
        readyForUI,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReadyForUI value) readyForUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReadyForUI value)? readyForUI,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredRoutesStateCopyWith<$Res> {
  factory $FilteredRoutesStateCopyWith(
          FilteredRoutesState value, $Res Function(FilteredRoutesState) then) =
      _$FilteredRoutesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredRoutesStateCopyWithImpl<$Res>
    implements $FilteredRoutesStateCopyWith<$Res> {
  _$FilteredRoutesStateCopyWithImpl(this._value, this._then);

  final FilteredRoutesState _value;
  // ignore: unused_field
  final $Res Function(FilteredRoutesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FilteredRoutesStateCopyWithImpl<$Res>
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
    return 'FilteredRoutesState.initial()';
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
    required TResult Function(List<Route> filteredRoutes, String? activeFilter,
            RoutesSorting activeSorting)
        readyForUI,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Route> filteredRoutes, String? activeFilter,
            RoutesSorting activeSorting)?
        readyForUI,
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
    required TResult Function(_ReadyForUI value) readyForUI,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReadyForUI value)? readyForUI,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilteredRoutesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReadyForUICopyWith<$Res> {
  factory _$ReadyForUICopyWith(
          _ReadyForUI value, $Res Function(_ReadyForUI) then) =
      __$ReadyForUICopyWithImpl<$Res>;
  $Res call(
      {List<Route> filteredRoutes,
      String? activeFilter,
      RoutesSorting activeSorting});
}

/// @nodoc
class __$ReadyForUICopyWithImpl<$Res>
    extends _$FilteredRoutesStateCopyWithImpl<$Res>
    implements _$ReadyForUICopyWith<$Res> {
  __$ReadyForUICopyWithImpl(
      _ReadyForUI _value, $Res Function(_ReadyForUI) _then)
      : super(_value, (v) => _then(v as _ReadyForUI));

  @override
  _ReadyForUI get _value => super._value as _ReadyForUI;

  @override
  $Res call({
    Object? filteredRoutes = freezed,
    Object? activeFilter = freezed,
    Object? activeSorting = freezed,
  }) {
    return _then(_ReadyForUI(
      filteredRoutes == freezed
          ? _value.filteredRoutes
          : filteredRoutes // ignore: cast_nullable_to_non_nullable
              as List<Route>,
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSorting == freezed
          ? _value.activeSorting
          : activeSorting // ignore: cast_nullable_to_non_nullable
              as RoutesSorting,
    ));
  }
}

/// @nodoc

class _$_ReadyForUI implements _ReadyForUI {
  const _$_ReadyForUI(
      this.filteredRoutes, this.activeFilter, this.activeSorting);

  @override
  final List<Route> filteredRoutes;
  @override
  final String? activeFilter;
  @override
  final RoutesSorting activeSorting;

  @override
  String toString() {
    return 'FilteredRoutesState.readyForUI(filteredRoutes: $filteredRoutes, activeFilter: $activeFilter, activeSorting: $activeSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadyForUI &&
            (identical(other.filteredRoutes, filteredRoutes) ||
                const DeepCollectionEquality()
                    .equals(other.filteredRoutes, filteredRoutes)) &&
            (identical(other.activeFilter, activeFilter) ||
                const DeepCollectionEquality()
                    .equals(other.activeFilter, activeFilter)) &&
            (identical(other.activeSorting, activeSorting) ||
                const DeepCollectionEquality()
                    .equals(other.activeSorting, activeSorting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filteredRoutes) ^
      const DeepCollectionEquality().hash(activeFilter) ^
      const DeepCollectionEquality().hash(activeSorting);

  @JsonKey(ignore: true)
  @override
  _$ReadyForUICopyWith<_ReadyForUI> get copyWith =>
      __$ReadyForUICopyWithImpl<_ReadyForUI>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Route> filteredRoutes, String? activeFilter,
            RoutesSorting activeSorting)
        readyForUI,
  }) {
    return readyForUI(filteredRoutes, activeFilter, activeSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Route> filteredRoutes, String? activeFilter,
            RoutesSorting activeSorting)?
        readyForUI,
    required TResult orElse(),
  }) {
    if (readyForUI != null) {
      return readyForUI(filteredRoutes, activeFilter, activeSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReadyForUI value) readyForUI,
  }) {
    return readyForUI(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReadyForUI value)? readyForUI,
    required TResult orElse(),
  }) {
    if (readyForUI != null) {
      return readyForUI(this);
    }
    return orElse();
  }
}

abstract class _ReadyForUI implements FilteredRoutesState {
  const factory _ReadyForUI(List<Route> filteredRoutes, String? activeFilter,
      RoutesSorting activeSorting) = _$_ReadyForUI;

  List<Route> get filteredRoutes => throw _privateConstructorUsedError;
  String? get activeFilter => throw _privateConstructorUsedError;
  RoutesSorting get activeSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyForUICopyWith<_ReadyForUI> get copyWith =>
      throw _privateConstructorUsedError;
}
