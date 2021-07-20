// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filtered_rocks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredRocksEventTearOff {
  const _$FilteredRocksEventTearOff();

  _FilterUpdated filterUpdated(String? newFilter) {
    return _FilterUpdated(
      newFilter,
    );
  }

  _SortingUpdated sortingUpdated(RocksSorting newSorting) {
    return _SortingUpdated(
      newSorting,
    );
  }

  _RocksUpdated rocksUpdated(List<Rock> rocks) {
    return _RocksUpdated(
      rocks,
    );
  }
}

/// @nodoc
const $FilteredRocksEvent = _$FilteredRocksEventTearOff();

/// @nodoc
mixin _$FilteredRocksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(RocksSorting newSorting) sortingUpdated,
    required TResult Function(List<Rock> rocks) rocksUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RocksSorting newSorting)? sortingUpdated,
    TResult Function(List<Rock> rocks)? rocksUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_RocksUpdated value) rocksUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RocksUpdated value)? rocksUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredRocksEventCopyWith<$Res> {
  factory $FilteredRocksEventCopyWith(
          FilteredRocksEvent value, $Res Function(FilteredRocksEvent) then) =
      _$FilteredRocksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredRocksEventCopyWithImpl<$Res>
    implements $FilteredRocksEventCopyWith<$Res> {
  _$FilteredRocksEventCopyWithImpl(this._value, this._then);

  final FilteredRocksEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredRocksEvent) _then;
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
    extends _$FilteredRocksEventCopyWithImpl<$Res>
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
    return 'FilteredRocksEvent.filterUpdated(newFilter: $newFilter)';
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
    required TResult Function(RocksSorting newSorting) sortingUpdated,
    required TResult Function(List<Rock> rocks) rocksUpdated,
  }) {
    return filterUpdated(newFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RocksSorting newSorting)? sortingUpdated,
    TResult Function(List<Rock> rocks)? rocksUpdated,
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
    required TResult Function(_RocksUpdated value) rocksUpdated,
  }) {
    return filterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RocksUpdated value)? rocksUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(this);
    }
    return orElse();
  }
}

abstract class _FilterUpdated implements FilteredRocksEvent {
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
  $Res call({RocksSorting newSorting});
}

/// @nodoc
class __$SortingUpdatedCopyWithImpl<$Res>
    extends _$FilteredRocksEventCopyWithImpl<$Res>
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
              as RocksSorting,
    ));
  }
}

/// @nodoc

class _$_SortingUpdated implements _SortingUpdated {
  const _$_SortingUpdated(this.newSorting);

  @override
  final RocksSorting newSorting;

  @override
  String toString() {
    return 'FilteredRocksEvent.sortingUpdated(newSorting: $newSorting)';
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
    required TResult Function(RocksSorting newSorting) sortingUpdated,
    required TResult Function(List<Rock> rocks) rocksUpdated,
  }) {
    return sortingUpdated(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RocksSorting newSorting)? sortingUpdated,
    TResult Function(List<Rock> rocks)? rocksUpdated,
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
    required TResult Function(_RocksUpdated value) rocksUpdated,
  }) {
    return sortingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RocksUpdated value)? rocksUpdated,
    required TResult orElse(),
  }) {
    if (sortingUpdated != null) {
      return sortingUpdated(this);
    }
    return orElse();
  }
}

abstract class _SortingUpdated implements FilteredRocksEvent {
  const factory _SortingUpdated(RocksSorting newSorting) = _$_SortingUpdated;

  RocksSorting get newSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SortingUpdatedCopyWith<_SortingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RocksUpdatedCopyWith<$Res> {
  factory _$RocksUpdatedCopyWith(
          _RocksUpdated value, $Res Function(_RocksUpdated) then) =
      __$RocksUpdatedCopyWithImpl<$Res>;
  $Res call({List<Rock> rocks});
}

/// @nodoc
class __$RocksUpdatedCopyWithImpl<$Res>
    extends _$FilteredRocksEventCopyWithImpl<$Res>
    implements _$RocksUpdatedCopyWith<$Res> {
  __$RocksUpdatedCopyWithImpl(
      _RocksUpdated _value, $Res Function(_RocksUpdated) _then)
      : super(_value, (v) => _then(v as _RocksUpdated));

  @override
  _RocksUpdated get _value => super._value as _RocksUpdated;

  @override
  $Res call({
    Object? rocks = freezed,
  }) {
    return _then(_RocksUpdated(
      rocks == freezed
          ? _value.rocks
          : rocks // ignore: cast_nullable_to_non_nullable
              as List<Rock>,
    ));
  }
}

/// @nodoc

class _$_RocksUpdated implements _RocksUpdated {
  const _$_RocksUpdated(this.rocks);

  @override
  final List<Rock> rocks;

  @override
  String toString() {
    return 'FilteredRocksEvent.rocksUpdated(rocks: $rocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RocksUpdated &&
            (identical(other.rocks, rocks) ||
                const DeepCollectionEquality().equals(other.rocks, rocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rocks);

  @JsonKey(ignore: true)
  @override
  _$RocksUpdatedCopyWith<_RocksUpdated> get copyWith =>
      __$RocksUpdatedCopyWithImpl<_RocksUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(RocksSorting newSorting) sortingUpdated,
    required TResult Function(List<Rock> rocks) rocksUpdated,
  }) {
    return rocksUpdated(rocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(RocksSorting newSorting)? sortingUpdated,
    TResult Function(List<Rock> rocks)? rocksUpdated,
    required TResult orElse(),
  }) {
    if (rocksUpdated != null) {
      return rocksUpdated(rocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_RocksUpdated value) rocksUpdated,
  }) {
    return rocksUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_RocksUpdated value)? rocksUpdated,
    required TResult orElse(),
  }) {
    if (rocksUpdated != null) {
      return rocksUpdated(this);
    }
    return orElse();
  }
}

abstract class _RocksUpdated implements FilteredRocksEvent {
  const factory _RocksUpdated(List<Rock> rocks) = _$_RocksUpdated;

  List<Rock> get rocks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RocksUpdatedCopyWith<_RocksUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilteredRocksStateTearOff {
  const _$FilteredRocksStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ReadyForUI readyForUI(List<Rock> filteredRocks, String? activeFilter,
      RocksSorting activeSorting) {
    return _ReadyForUI(
      filteredRocks,
      activeFilter,
      activeSorting,
    );
  }
}

/// @nodoc
const $FilteredRocksState = _$FilteredRocksStateTearOff();

/// @nodoc
mixin _$FilteredRocksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Rock> filteredRocks, String? activeFilter,
            RocksSorting activeSorting)
        readyForUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Rock> filteredRocks, String? activeFilter,
            RocksSorting activeSorting)?
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
abstract class $FilteredRocksStateCopyWith<$Res> {
  factory $FilteredRocksStateCopyWith(
          FilteredRocksState value, $Res Function(FilteredRocksState) then) =
      _$FilteredRocksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredRocksStateCopyWithImpl<$Res>
    implements $FilteredRocksStateCopyWith<$Res> {
  _$FilteredRocksStateCopyWithImpl(this._value, this._then);

  final FilteredRocksState _value;
  // ignore: unused_field
  final $Res Function(FilteredRocksState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FilteredRocksStateCopyWithImpl<$Res>
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
    return 'FilteredRocksState.initial()';
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
    required TResult Function(List<Rock> filteredRocks, String? activeFilter,
            RocksSorting activeSorting)
        readyForUI,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Rock> filteredRocks, String? activeFilter,
            RocksSorting activeSorting)?
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

abstract class _Initial implements FilteredRocksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReadyForUICopyWith<$Res> {
  factory _$ReadyForUICopyWith(
          _ReadyForUI value, $Res Function(_ReadyForUI) then) =
      __$ReadyForUICopyWithImpl<$Res>;
  $Res call(
      {List<Rock> filteredRocks,
      String? activeFilter,
      RocksSorting activeSorting});
}

/// @nodoc
class __$ReadyForUICopyWithImpl<$Res>
    extends _$FilteredRocksStateCopyWithImpl<$Res>
    implements _$ReadyForUICopyWith<$Res> {
  __$ReadyForUICopyWithImpl(
      _ReadyForUI _value, $Res Function(_ReadyForUI) _then)
      : super(_value, (v) => _then(v as _ReadyForUI));

  @override
  _ReadyForUI get _value => super._value as _ReadyForUI;

  @override
  $Res call({
    Object? filteredRocks = freezed,
    Object? activeFilter = freezed,
    Object? activeSorting = freezed,
  }) {
    return _then(_ReadyForUI(
      filteredRocks == freezed
          ? _value.filteredRocks
          : filteredRocks // ignore: cast_nullable_to_non_nullable
              as List<Rock>,
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSorting == freezed
          ? _value.activeSorting
          : activeSorting // ignore: cast_nullable_to_non_nullable
              as RocksSorting,
    ));
  }
}

/// @nodoc

class _$_ReadyForUI implements _ReadyForUI {
  const _$_ReadyForUI(
      this.filteredRocks, this.activeFilter, this.activeSorting);

  @override
  final List<Rock> filteredRocks;
  @override
  final String? activeFilter;
  @override
  final RocksSorting activeSorting;

  @override
  String toString() {
    return 'FilteredRocksState.readyForUI(filteredRocks: $filteredRocks, activeFilter: $activeFilter, activeSorting: $activeSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadyForUI &&
            (identical(other.filteredRocks, filteredRocks) ||
                const DeepCollectionEquality()
                    .equals(other.filteredRocks, filteredRocks)) &&
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
      const DeepCollectionEquality().hash(filteredRocks) ^
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
    required TResult Function(List<Rock> filteredRocks, String? activeFilter,
            RocksSorting activeSorting)
        readyForUI,
  }) {
    return readyForUI(filteredRocks, activeFilter, activeSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Rock> filteredRocks, String? activeFilter,
            RocksSorting activeSorting)?
        readyForUI,
    required TResult orElse(),
  }) {
    if (readyForUI != null) {
      return readyForUI(filteredRocks, activeFilter, activeSorting);
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

abstract class _ReadyForUI implements FilteredRocksState {
  const factory _ReadyForUI(List<Rock> filteredRocks, String? activeFilter,
      RocksSorting activeSorting) = _$_ReadyForUI;

  List<Rock> get filteredRocks => throw _privateConstructorUsedError;
  String? get activeFilter => throw _privateConstructorUsedError;
  RocksSorting get activeSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyForUICopyWith<_ReadyForUI> get copyWith =>
      throw _privateConstructorUsedError;
}
