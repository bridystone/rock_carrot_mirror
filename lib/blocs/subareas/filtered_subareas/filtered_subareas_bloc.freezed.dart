// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filtered_subareas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredSubareasEventTearOff {
  const _$FilteredSubareasEventTearOff();

  _FilterUpdated filterUpdated(String? newFilter) {
    return _FilterUpdated(
      newFilter,
    );
  }

  _SortingUpdated sortingUpdated(SubareasSorting newSorting) {
    return _SortingUpdated(
      newSorting,
    );
  }

  _SubareasUpdated subareasUpdated(List<Subarea> subareas) {
    return _SubareasUpdated(
      subareas,
    );
  }
}

/// @nodoc
const $FilteredSubareasEvent = _$FilteredSubareasEventTearOff();

/// @nodoc
mixin _$FilteredSubareasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(SubareasSorting newSorting) sortingUpdated,
    required TResult Function(List<Subarea> subareas) subareasUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(SubareasSorting newSorting)? sortingUpdated,
    TResult Function(List<Subarea> subareas)? subareasUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_SubareasUpdated value) subareasUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_SubareasUpdated value)? subareasUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredSubareasEventCopyWith<$Res> {
  factory $FilteredSubareasEventCopyWith(FilteredSubareasEvent value,
          $Res Function(FilteredSubareasEvent) then) =
      _$FilteredSubareasEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredSubareasEventCopyWithImpl<$Res>
    implements $FilteredSubareasEventCopyWith<$Res> {
  _$FilteredSubareasEventCopyWithImpl(this._value, this._then);

  final FilteredSubareasEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredSubareasEvent) _then;
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
    extends _$FilteredSubareasEventCopyWithImpl<$Res>
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
    return 'FilteredSubareasEvent.filterUpdated(newFilter: $newFilter)';
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
    required TResult Function(SubareasSorting newSorting) sortingUpdated,
    required TResult Function(List<Subarea> subareas) subareasUpdated,
  }) {
    return filterUpdated(newFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(SubareasSorting newSorting)? sortingUpdated,
    TResult Function(List<Subarea> subareas)? subareasUpdated,
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
    required TResult Function(_SubareasUpdated value) subareasUpdated,
  }) {
    return filterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_SubareasUpdated value)? subareasUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(this);
    }
    return orElse();
  }
}

abstract class _FilterUpdated implements FilteredSubareasEvent {
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
  $Res call({SubareasSorting newSorting});
}

/// @nodoc
class __$SortingUpdatedCopyWithImpl<$Res>
    extends _$FilteredSubareasEventCopyWithImpl<$Res>
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
              as SubareasSorting,
    ));
  }
}

/// @nodoc

class _$_SortingUpdated implements _SortingUpdated {
  const _$_SortingUpdated(this.newSorting);

  @override
  final SubareasSorting newSorting;

  @override
  String toString() {
    return 'FilteredSubareasEvent.sortingUpdated(newSorting: $newSorting)';
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
    required TResult Function(SubareasSorting newSorting) sortingUpdated,
    required TResult Function(List<Subarea> subareas) subareasUpdated,
  }) {
    return sortingUpdated(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(SubareasSorting newSorting)? sortingUpdated,
    TResult Function(List<Subarea> subareas)? subareasUpdated,
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
    required TResult Function(_SubareasUpdated value) subareasUpdated,
  }) {
    return sortingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_SubareasUpdated value)? subareasUpdated,
    required TResult orElse(),
  }) {
    if (sortingUpdated != null) {
      return sortingUpdated(this);
    }
    return orElse();
  }
}

abstract class _SortingUpdated implements FilteredSubareasEvent {
  const factory _SortingUpdated(SubareasSorting newSorting) = _$_SortingUpdated;

  SubareasSorting get newSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SortingUpdatedCopyWith<_SortingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubareasUpdatedCopyWith<$Res> {
  factory _$SubareasUpdatedCopyWith(
          _SubareasUpdated value, $Res Function(_SubareasUpdated) then) =
      __$SubareasUpdatedCopyWithImpl<$Res>;
  $Res call({List<Subarea> subareas});
}

/// @nodoc
class __$SubareasUpdatedCopyWithImpl<$Res>
    extends _$FilteredSubareasEventCopyWithImpl<$Res>
    implements _$SubareasUpdatedCopyWith<$Res> {
  __$SubareasUpdatedCopyWithImpl(
      _SubareasUpdated _value, $Res Function(_SubareasUpdated) _then)
      : super(_value, (v) => _then(v as _SubareasUpdated));

  @override
  _SubareasUpdated get _value => super._value as _SubareasUpdated;

  @override
  $Res call({
    Object? subareas = freezed,
  }) {
    return _then(_SubareasUpdated(
      subareas == freezed
          ? _value.subareas
          : subareas // ignore: cast_nullable_to_non_nullable
              as List<Subarea>,
    ));
  }
}

/// @nodoc

class _$_SubareasUpdated implements _SubareasUpdated {
  const _$_SubareasUpdated(this.subareas);

  @override
  final List<Subarea> subareas;

  @override
  String toString() {
    return 'FilteredSubareasEvent.subareasUpdated(subareas: $subareas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubareasUpdated &&
            (identical(other.subareas, subareas) ||
                const DeepCollectionEquality()
                    .equals(other.subareas, subareas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subareas);

  @JsonKey(ignore: true)
  @override
  _$SubareasUpdatedCopyWith<_SubareasUpdated> get copyWith =>
      __$SubareasUpdatedCopyWithImpl<_SubareasUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(SubareasSorting newSorting) sortingUpdated,
    required TResult Function(List<Subarea> subareas) subareasUpdated,
  }) {
    return subareasUpdated(subareas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(SubareasSorting newSorting)? sortingUpdated,
    TResult Function(List<Subarea> subareas)? subareasUpdated,
    required TResult orElse(),
  }) {
    if (subareasUpdated != null) {
      return subareasUpdated(subareas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_SubareasUpdated value) subareasUpdated,
  }) {
    return subareasUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_SubareasUpdated value)? subareasUpdated,
    required TResult orElse(),
  }) {
    if (subareasUpdated != null) {
      return subareasUpdated(this);
    }
    return orElse();
  }
}

abstract class _SubareasUpdated implements FilteredSubareasEvent {
  const factory _SubareasUpdated(List<Subarea> subareas) = _$_SubareasUpdated;

  List<Subarea> get subareas => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubareasUpdatedCopyWith<_SubareasUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilteredSubareasStateTearOff {
  const _$FilteredSubareasStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ReadyForUI readyForUI(List<Subarea> filteredSubareas, String? activeFilter,
      SubareasSorting activeSorting) {
    return _ReadyForUI(
      filteredSubareas,
      activeFilter,
      activeSorting,
    );
  }
}

/// @nodoc
const $FilteredSubareasState = _$FilteredSubareasStateTearOff();

/// @nodoc
mixin _$FilteredSubareasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Subarea> filteredSubareas,
            String? activeFilter, SubareasSorting activeSorting)
        readyForUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Subarea> filteredSubareas, String? activeFilter,
            SubareasSorting activeSorting)?
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
abstract class $FilteredSubareasStateCopyWith<$Res> {
  factory $FilteredSubareasStateCopyWith(FilteredSubareasState value,
          $Res Function(FilteredSubareasState) then) =
      _$FilteredSubareasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredSubareasStateCopyWithImpl<$Res>
    implements $FilteredSubareasStateCopyWith<$Res> {
  _$FilteredSubareasStateCopyWithImpl(this._value, this._then);

  final FilteredSubareasState _value;
  // ignore: unused_field
  final $Res Function(FilteredSubareasState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FilteredSubareasStateCopyWithImpl<$Res>
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
    return 'FilteredSubareasState.initial()';
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
    required TResult Function(List<Subarea> filteredSubareas,
            String? activeFilter, SubareasSorting activeSorting)
        readyForUI,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Subarea> filteredSubareas, String? activeFilter,
            SubareasSorting activeSorting)?
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

abstract class _Initial implements FilteredSubareasState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReadyForUICopyWith<$Res> {
  factory _$ReadyForUICopyWith(
          _ReadyForUI value, $Res Function(_ReadyForUI) then) =
      __$ReadyForUICopyWithImpl<$Res>;
  $Res call(
      {List<Subarea> filteredSubareas,
      String? activeFilter,
      SubareasSorting activeSorting});
}

/// @nodoc
class __$ReadyForUICopyWithImpl<$Res>
    extends _$FilteredSubareasStateCopyWithImpl<$Res>
    implements _$ReadyForUICopyWith<$Res> {
  __$ReadyForUICopyWithImpl(
      _ReadyForUI _value, $Res Function(_ReadyForUI) _then)
      : super(_value, (v) => _then(v as _ReadyForUI));

  @override
  _ReadyForUI get _value => super._value as _ReadyForUI;

  @override
  $Res call({
    Object? filteredSubareas = freezed,
    Object? activeFilter = freezed,
    Object? activeSorting = freezed,
  }) {
    return _then(_ReadyForUI(
      filteredSubareas == freezed
          ? _value.filteredSubareas
          : filteredSubareas // ignore: cast_nullable_to_non_nullable
              as List<Subarea>,
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSorting == freezed
          ? _value.activeSorting
          : activeSorting // ignore: cast_nullable_to_non_nullable
              as SubareasSorting,
    ));
  }
}

/// @nodoc

class _$_ReadyForUI implements _ReadyForUI {
  const _$_ReadyForUI(
      this.filteredSubareas, this.activeFilter, this.activeSorting);

  @override
  final List<Subarea> filteredSubareas;
  @override
  final String? activeFilter;
  @override
  final SubareasSorting activeSorting;

  @override
  String toString() {
    return 'FilteredSubareasState.readyForUI(filteredSubareas: $filteredSubareas, activeFilter: $activeFilter, activeSorting: $activeSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadyForUI &&
            (identical(other.filteredSubareas, filteredSubareas) ||
                const DeepCollectionEquality()
                    .equals(other.filteredSubareas, filteredSubareas)) &&
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
      const DeepCollectionEquality().hash(filteredSubareas) ^
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
    required TResult Function(List<Subarea> filteredSubareas,
            String? activeFilter, SubareasSorting activeSorting)
        readyForUI,
  }) {
    return readyForUI(filteredSubareas, activeFilter, activeSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Subarea> filteredSubareas, String? activeFilter,
            SubareasSorting activeSorting)?
        readyForUI,
    required TResult orElse(),
  }) {
    if (readyForUI != null) {
      return readyForUI(filteredSubareas, activeFilter, activeSorting);
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

abstract class _ReadyForUI implements FilteredSubareasState {
  const factory _ReadyForUI(List<Subarea> filteredSubareas,
      String? activeFilter, SubareasSorting activeSorting) = _$_ReadyForUI;

  List<Subarea> get filteredSubareas => throw _privateConstructorUsedError;
  String? get activeFilter => throw _privateConstructorUsedError;
  SubareasSorting get activeSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyForUICopyWith<_ReadyForUI> get copyWith =>
      throw _privateConstructorUsedError;
}
