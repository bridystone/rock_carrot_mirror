// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filtered_areas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredAreasEventTearOff {
  const _$FilteredAreasEventTearOff();

  _FilterUpdated filterUpdated(String? newFilter) {
    return _FilterUpdated(
      newFilter,
    );
  }

  _SortingUpdated sortingUpdated(AreasSorting newSorting) {
    return _SortingUpdated(
      newSorting,
    );
  }

  _AreasUpdated areasUpdated(List<Area> areas) {
    return _AreasUpdated(
      areas,
    );
  }
}

/// @nodoc
const $FilteredAreasEvent = _$FilteredAreasEventTearOff();

/// @nodoc
mixin _$FilteredAreasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(AreasSorting newSorting) sortingUpdated,
    required TResult Function(List<Area> areas) areasUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(AreasSorting newSorting)? sortingUpdated,
    TResult Function(List<Area> areas)? areasUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_AreasUpdated value) areasUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_AreasUpdated value)? areasUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredAreasEventCopyWith<$Res> {
  factory $FilteredAreasEventCopyWith(
          FilteredAreasEvent value, $Res Function(FilteredAreasEvent) then) =
      _$FilteredAreasEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredAreasEventCopyWithImpl<$Res>
    implements $FilteredAreasEventCopyWith<$Res> {
  _$FilteredAreasEventCopyWithImpl(this._value, this._then);

  final FilteredAreasEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredAreasEvent) _then;
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
    extends _$FilteredAreasEventCopyWithImpl<$Res>
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
    return 'FilteredAreasEvent.filterUpdated(newFilter: $newFilter)';
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
    required TResult Function(AreasSorting newSorting) sortingUpdated,
    required TResult Function(List<Area> areas) areasUpdated,
  }) {
    return filterUpdated(newFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(AreasSorting newSorting)? sortingUpdated,
    TResult Function(List<Area> areas)? areasUpdated,
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
    required TResult Function(_AreasUpdated value) areasUpdated,
  }) {
    return filterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_AreasUpdated value)? areasUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(this);
    }
    return orElse();
  }
}

abstract class _FilterUpdated implements FilteredAreasEvent {
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
  $Res call({AreasSorting newSorting});
}

/// @nodoc
class __$SortingUpdatedCopyWithImpl<$Res>
    extends _$FilteredAreasEventCopyWithImpl<$Res>
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
              as AreasSorting,
    ));
  }
}

/// @nodoc

class _$_SortingUpdated implements _SortingUpdated {
  const _$_SortingUpdated(this.newSorting);

  @override
  final AreasSorting newSorting;

  @override
  String toString() {
    return 'FilteredAreasEvent.sortingUpdated(newSorting: $newSorting)';
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
    required TResult Function(AreasSorting newSorting) sortingUpdated,
    required TResult Function(List<Area> areas) areasUpdated,
  }) {
    return sortingUpdated(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(AreasSorting newSorting)? sortingUpdated,
    TResult Function(List<Area> areas)? areasUpdated,
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
    required TResult Function(_AreasUpdated value) areasUpdated,
  }) {
    return sortingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_AreasUpdated value)? areasUpdated,
    required TResult orElse(),
  }) {
    if (sortingUpdated != null) {
      return sortingUpdated(this);
    }
    return orElse();
  }
}

abstract class _SortingUpdated implements FilteredAreasEvent {
  const factory _SortingUpdated(AreasSorting newSorting) = _$_SortingUpdated;

  AreasSorting get newSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SortingUpdatedCopyWith<_SortingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AreasUpdatedCopyWith<$Res> {
  factory _$AreasUpdatedCopyWith(
          _AreasUpdated value, $Res Function(_AreasUpdated) then) =
      __$AreasUpdatedCopyWithImpl<$Res>;
  $Res call({List<Area> areas});
}

/// @nodoc
class __$AreasUpdatedCopyWithImpl<$Res>
    extends _$FilteredAreasEventCopyWithImpl<$Res>
    implements _$AreasUpdatedCopyWith<$Res> {
  __$AreasUpdatedCopyWithImpl(
      _AreasUpdated _value, $Res Function(_AreasUpdated) _then)
      : super(_value, (v) => _then(v as _AreasUpdated));

  @override
  _AreasUpdated get _value => super._value as _AreasUpdated;

  @override
  $Res call({
    Object? areas = freezed,
  }) {
    return _then(_AreasUpdated(
      areas == freezed
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>,
    ));
  }
}

/// @nodoc

class _$_AreasUpdated implements _AreasUpdated {
  const _$_AreasUpdated(this.areas);

  @override
  final List<Area> areas;

  @override
  String toString() {
    return 'FilteredAreasEvent.areasUpdated(areas: $areas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AreasUpdated &&
            (identical(other.areas, areas) ||
                const DeepCollectionEquality().equals(other.areas, areas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(areas);

  @JsonKey(ignore: true)
  @override
  _$AreasUpdatedCopyWith<_AreasUpdated> get copyWith =>
      __$AreasUpdatedCopyWithImpl<_AreasUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(AreasSorting newSorting) sortingUpdated,
    required TResult Function(List<Area> areas) areasUpdated,
  }) {
    return areasUpdated(areas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(AreasSorting newSorting)? sortingUpdated,
    TResult Function(List<Area> areas)? areasUpdated,
    required TResult orElse(),
  }) {
    if (areasUpdated != null) {
      return areasUpdated(areas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_AreasUpdated value) areasUpdated,
  }) {
    return areasUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_AreasUpdated value)? areasUpdated,
    required TResult orElse(),
  }) {
    if (areasUpdated != null) {
      return areasUpdated(this);
    }
    return orElse();
  }
}

abstract class _AreasUpdated implements FilteredAreasEvent {
  const factory _AreasUpdated(List<Area> areas) = _$_AreasUpdated;

  List<Area> get areas => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AreasUpdatedCopyWith<_AreasUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilteredAreasStateTearOff {
  const _$FilteredAreasStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ReadyForUI readyForUI(List<Area> filteredTodos, String? activeFilter,
      AreasSorting activeSorting) {
    return _ReadyForUI(
      filteredTodos,
      activeFilter,
      activeSorting,
    );
  }
}

/// @nodoc
const $FilteredAreasState = _$FilteredAreasStateTearOff();

/// @nodoc
mixin _$FilteredAreasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Area> filteredTodos, String? activeFilter,
            AreasSorting activeSorting)
        readyForUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Area> filteredTodos, String? activeFilter,
            AreasSorting activeSorting)?
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
abstract class $FilteredAreasStateCopyWith<$Res> {
  factory $FilteredAreasStateCopyWith(
          FilteredAreasState value, $Res Function(FilteredAreasState) then) =
      _$FilteredAreasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredAreasStateCopyWithImpl<$Res>
    implements $FilteredAreasStateCopyWith<$Res> {
  _$FilteredAreasStateCopyWithImpl(this._value, this._then);

  final FilteredAreasState _value;
  // ignore: unused_field
  final $Res Function(FilteredAreasState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FilteredAreasStateCopyWithImpl<$Res>
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
    return 'FilteredAreasState.initial()';
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
    required TResult Function(List<Area> filteredTodos, String? activeFilter,
            AreasSorting activeSorting)
        readyForUI,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Area> filteredTodos, String? activeFilter,
            AreasSorting activeSorting)?
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

abstract class _Initial implements FilteredAreasState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReadyForUICopyWith<$Res> {
  factory _$ReadyForUICopyWith(
          _ReadyForUI value, $Res Function(_ReadyForUI) then) =
      __$ReadyForUICopyWithImpl<$Res>;
  $Res call(
      {List<Area> filteredTodos,
      String? activeFilter,
      AreasSorting activeSorting});
}

/// @nodoc
class __$ReadyForUICopyWithImpl<$Res>
    extends _$FilteredAreasStateCopyWithImpl<$Res>
    implements _$ReadyForUICopyWith<$Res> {
  __$ReadyForUICopyWithImpl(
      _ReadyForUI _value, $Res Function(_ReadyForUI) _then)
      : super(_value, (v) => _then(v as _ReadyForUI));

  @override
  _ReadyForUI get _value => super._value as _ReadyForUI;

  @override
  $Res call({
    Object? filteredTodos = freezed,
    Object? activeFilter = freezed,
    Object? activeSorting = freezed,
  }) {
    return _then(_ReadyForUI(
      filteredTodos == freezed
          ? _value.filteredTodos
          : filteredTodos // ignore: cast_nullable_to_non_nullable
              as List<Area>,
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSorting == freezed
          ? _value.activeSorting
          : activeSorting // ignore: cast_nullable_to_non_nullable
              as AreasSorting,
    ));
  }
}

/// @nodoc

class _$_ReadyForUI implements _ReadyForUI {
  const _$_ReadyForUI(
      this.filteredTodos, this.activeFilter, this.activeSorting);

  @override
  final List<Area> filteredTodos;
  @override
  final String? activeFilter;
  @override
  final AreasSorting activeSorting;

  @override
  String toString() {
    return 'FilteredAreasState.readyForUI(filteredTodos: $filteredTodos, activeFilter: $activeFilter, activeSorting: $activeSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadyForUI &&
            (identical(other.filteredTodos, filteredTodos) ||
                const DeepCollectionEquality()
                    .equals(other.filteredTodos, filteredTodos)) &&
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
      const DeepCollectionEquality().hash(filteredTodos) ^
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
    required TResult Function(List<Area> filteredTodos, String? activeFilter,
            AreasSorting activeSorting)
        readyForUI,
  }) {
    return readyForUI(filteredTodos, activeFilter, activeSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Area> filteredTodos, String? activeFilter,
            AreasSorting activeSorting)?
        readyForUI,
    required TResult orElse(),
  }) {
    if (readyForUI != null) {
      return readyForUI(filteredTodos, activeFilter, activeSorting);
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

abstract class _ReadyForUI implements FilteredAreasState {
  const factory _ReadyForUI(List<Area> filteredTodos, String? activeFilter,
      AreasSorting activeSorting) = _$_ReadyForUI;

  List<Area> get filteredTodos => throw _privateConstructorUsedError;
  String? get activeFilter => throw _privateConstructorUsedError;
  AreasSorting get activeSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyForUICopyWith<_ReadyForUI> get copyWith =>
      throw _privateConstructorUsedError;
}
