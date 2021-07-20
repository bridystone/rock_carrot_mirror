// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filtered_countries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredCountriesEventTearOff {
  const _$FilteredCountriesEventTearOff();

  _FilterUpdated filterUpdated(String? newFilter) {
    return _FilterUpdated(
      newFilter,
    );
  }

  _SortingUpdated sortingUpdated(CountriesSorting newSorting) {
    return _SortingUpdated(
      newSorting,
    );
  }

  _CountriesUpdated countriesUpdated(List<Country> countries) {
    return _CountriesUpdated(
      countries,
    );
  }
}

/// @nodoc
const $FilteredCountriesEvent = _$FilteredCountriesEventTearOff();

/// @nodoc
mixin _$FilteredCountriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(CountriesSorting newSorting) sortingUpdated,
    required TResult Function(List<Country> countries) countriesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(CountriesSorting newSorting)? sortingUpdated,
    TResult Function(List<Country> countries)? countriesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_CountriesUpdated value) countriesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_CountriesUpdated value)? countriesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredCountriesEventCopyWith<$Res> {
  factory $FilteredCountriesEventCopyWith(FilteredCountriesEvent value,
          $Res Function(FilteredCountriesEvent) then) =
      _$FilteredCountriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredCountriesEventCopyWithImpl<$Res>
    implements $FilteredCountriesEventCopyWith<$Res> {
  _$FilteredCountriesEventCopyWithImpl(this._value, this._then);

  final FilteredCountriesEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredCountriesEvent) _then;
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
    extends _$FilteredCountriesEventCopyWithImpl<$Res>
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
    return 'FilteredCountriesEvent.filterUpdated(newFilter: $newFilter)';
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
    required TResult Function(CountriesSorting newSorting) sortingUpdated,
    required TResult Function(List<Country> countries) countriesUpdated,
  }) {
    return filterUpdated(newFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(CountriesSorting newSorting)? sortingUpdated,
    TResult Function(List<Country> countries)? countriesUpdated,
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
    required TResult Function(_CountriesUpdated value) countriesUpdated,
  }) {
    return filterUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_CountriesUpdated value)? countriesUpdated,
    required TResult orElse(),
  }) {
    if (filterUpdated != null) {
      return filterUpdated(this);
    }
    return orElse();
  }
}

abstract class _FilterUpdated implements FilteredCountriesEvent {
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
  $Res call({CountriesSorting newSorting});
}

/// @nodoc
class __$SortingUpdatedCopyWithImpl<$Res>
    extends _$FilteredCountriesEventCopyWithImpl<$Res>
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
              as CountriesSorting,
    ));
  }
}

/// @nodoc

class _$_SortingUpdated implements _SortingUpdated {
  const _$_SortingUpdated(this.newSorting);

  @override
  final CountriesSorting newSorting;

  @override
  String toString() {
    return 'FilteredCountriesEvent.sortingUpdated(newSorting: $newSorting)';
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
    required TResult Function(CountriesSorting newSorting) sortingUpdated,
    required TResult Function(List<Country> countries) countriesUpdated,
  }) {
    return sortingUpdated(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(CountriesSorting newSorting)? sortingUpdated,
    TResult Function(List<Country> countries)? countriesUpdated,
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
    required TResult Function(_CountriesUpdated value) countriesUpdated,
  }) {
    return sortingUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_CountriesUpdated value)? countriesUpdated,
    required TResult orElse(),
  }) {
    if (sortingUpdated != null) {
      return sortingUpdated(this);
    }
    return orElse();
  }
}

abstract class _SortingUpdated implements FilteredCountriesEvent {
  const factory _SortingUpdated(CountriesSorting newSorting) =
      _$_SortingUpdated;

  CountriesSorting get newSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SortingUpdatedCopyWith<_SortingUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CountriesUpdatedCopyWith<$Res> {
  factory _$CountriesUpdatedCopyWith(
          _CountriesUpdated value, $Res Function(_CountriesUpdated) then) =
      __$CountriesUpdatedCopyWithImpl<$Res>;
  $Res call({List<Country> countries});
}

/// @nodoc
class __$CountriesUpdatedCopyWithImpl<$Res>
    extends _$FilteredCountriesEventCopyWithImpl<$Res>
    implements _$CountriesUpdatedCopyWith<$Res> {
  __$CountriesUpdatedCopyWithImpl(
      _CountriesUpdated _value, $Res Function(_CountriesUpdated) _then)
      : super(_value, (v) => _then(v as _CountriesUpdated));

  @override
  _CountriesUpdated get _value => super._value as _CountriesUpdated;

  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_CountriesUpdated(
      countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$_CountriesUpdated implements _CountriesUpdated {
  const _$_CountriesUpdated(this.countries);

  @override
  final List<Country> countries;

  @override
  String toString() {
    return 'FilteredCountriesEvent.countriesUpdated(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesUpdated &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countries);

  @JsonKey(ignore: true)
  @override
  _$CountriesUpdatedCopyWith<_CountriesUpdated> get copyWith =>
      __$CountriesUpdatedCopyWithImpl<_CountriesUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? newFilter) filterUpdated,
    required TResult Function(CountriesSorting newSorting) sortingUpdated,
    required TResult Function(List<Country> countries) countriesUpdated,
  }) {
    return countriesUpdated(countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? newFilter)? filterUpdated,
    TResult Function(CountriesSorting newSorting)? sortingUpdated,
    TResult Function(List<Country> countries)? countriesUpdated,
    required TResult orElse(),
  }) {
    if (countriesUpdated != null) {
      return countriesUpdated(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterUpdated value) filterUpdated,
    required TResult Function(_SortingUpdated value) sortingUpdated,
    required TResult Function(_CountriesUpdated value) countriesUpdated,
  }) {
    return countriesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterUpdated value)? filterUpdated,
    TResult Function(_SortingUpdated value)? sortingUpdated,
    TResult Function(_CountriesUpdated value)? countriesUpdated,
    required TResult orElse(),
  }) {
    if (countriesUpdated != null) {
      return countriesUpdated(this);
    }
    return orElse();
  }
}

abstract class _CountriesUpdated implements FilteredCountriesEvent {
  const factory _CountriesUpdated(List<Country> countries) =
      _$_CountriesUpdated;

  List<Country> get countries => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CountriesUpdatedCopyWith<_CountriesUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilteredCountriesStateTearOff {
  const _$FilteredCountriesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ReadyForUI readyForUI(List<Country> filteredCountries, String? activeFilter,
      CountriesSorting activeSorting) {
    return _ReadyForUI(
      filteredCountries,
      activeFilter,
      activeSorting,
    );
  }
}

/// @nodoc
const $FilteredCountriesState = _$FilteredCountriesStateTearOff();

/// @nodoc
mixin _$FilteredCountriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Country> filteredCountries,
            String? activeFilter, CountriesSorting activeSorting)
        readyForUI,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Country> filteredCountries, String? activeFilter,
            CountriesSorting activeSorting)?
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
abstract class $FilteredCountriesStateCopyWith<$Res> {
  factory $FilteredCountriesStateCopyWith(FilteredCountriesState value,
          $Res Function(FilteredCountriesState) then) =
      _$FilteredCountriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredCountriesStateCopyWithImpl<$Res>
    implements $FilteredCountriesStateCopyWith<$Res> {
  _$FilteredCountriesStateCopyWithImpl(this._value, this._then);

  final FilteredCountriesState _value;
  // ignore: unused_field
  final $Res Function(FilteredCountriesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FilteredCountriesStateCopyWithImpl<$Res>
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
    return 'FilteredCountriesState.initial()';
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
    required TResult Function(List<Country> filteredCountries,
            String? activeFilter, CountriesSorting activeSorting)
        readyForUI,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Country> filteredCountries, String? activeFilter,
            CountriesSorting activeSorting)?
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

abstract class _Initial implements FilteredCountriesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ReadyForUICopyWith<$Res> {
  factory _$ReadyForUICopyWith(
          _ReadyForUI value, $Res Function(_ReadyForUI) then) =
      __$ReadyForUICopyWithImpl<$Res>;
  $Res call(
      {List<Country> filteredCountries,
      String? activeFilter,
      CountriesSorting activeSorting});
}

/// @nodoc
class __$ReadyForUICopyWithImpl<$Res>
    extends _$FilteredCountriesStateCopyWithImpl<$Res>
    implements _$ReadyForUICopyWith<$Res> {
  __$ReadyForUICopyWithImpl(
      _ReadyForUI _value, $Res Function(_ReadyForUI) _then)
      : super(_value, (v) => _then(v as _ReadyForUI));

  @override
  _ReadyForUI get _value => super._value as _ReadyForUI;

  @override
  $Res call({
    Object? filteredCountries = freezed,
    Object? activeFilter = freezed,
    Object? activeSorting = freezed,
  }) {
    return _then(_ReadyForUI(
      filteredCountries == freezed
          ? _value.filteredCountries
          : filteredCountries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      activeFilter == freezed
          ? _value.activeFilter
          : activeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      activeSorting == freezed
          ? _value.activeSorting
          : activeSorting // ignore: cast_nullable_to_non_nullable
              as CountriesSorting,
    ));
  }
}

/// @nodoc

class _$_ReadyForUI implements _ReadyForUI {
  const _$_ReadyForUI(
      this.filteredCountries, this.activeFilter, this.activeSorting);

  @override
  final List<Country> filteredCountries;
  @override
  final String? activeFilter;
  @override
  final CountriesSorting activeSorting;

  @override
  String toString() {
    return 'FilteredCountriesState.readyForUI(filteredCountries: $filteredCountries, activeFilter: $activeFilter, activeSorting: $activeSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadyForUI &&
            (identical(other.filteredCountries, filteredCountries) ||
                const DeepCollectionEquality()
                    .equals(other.filteredCountries, filteredCountries)) &&
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
      const DeepCollectionEquality().hash(filteredCountries) ^
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
    required TResult Function(List<Country> filteredCountries,
            String? activeFilter, CountriesSorting activeSorting)
        readyForUI,
  }) {
    return readyForUI(filteredCountries, activeFilter, activeSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Country> filteredCountries, String? activeFilter,
            CountriesSorting activeSorting)?
        readyForUI,
    required TResult orElse(),
  }) {
    if (readyForUI != null) {
      return readyForUI(filteredCountries, activeFilter, activeSorting);
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

abstract class _ReadyForUI implements FilteredCountriesState {
  const factory _ReadyForUI(List<Country> filteredCountries,
      String? activeFilter, CountriesSorting activeSorting) = _$_ReadyForUI;

  List<Country> get filteredCountries => throw _privateConstructorUsedError;
  String? get activeFilter => throw _privateConstructorUsedError;
  CountriesSorting get activeSorting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyForUICopyWith<_ReadyForUI> get copyWith =>
      throw _privateConstructorUsedError;
}
