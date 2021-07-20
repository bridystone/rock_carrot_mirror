// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
class _$RouteTearOff {
  const _$RouteTearOff();

  _Route call(
      @JsonKey(name: 'weg_ID')
          int id,
      @RouteDifficultyConverter()
      @JsonKey(name: 'schwierigkeit')
          RouteDifficulty difficulty,
      @JsonKey(name: 'erstbegvorstieg')
          String firstAscentLead,
      @JsonKey(name: 'erstbegnachstieg')
          String firstAscentPartners,
      @JsonKey(name: 'erstbegdatum')
          DateTime? firstAscentDate,
      @IntConverter()
      @JsonKey(name: 'ringzahl')
          int? rings,
      @JsonKey(name: 'wegbeschr_d')
          String description_internal,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription_internal,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name_internal,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName_internal,
      @IntConverter()
      @JsonKey(name: 'wegstatus')
          int? state,
      @DoubleConverter()
      @JsonKey(name: 'wegnr')
          double? nr,
      @JsonKey(name: 'comment_count')
          int commentCount,
      @JsonKey(name: 'insert_timestamp')
          DateTime lastUpdated) {
    return _Route(
      id,
      difficulty,
      firstAscentLead,
      firstAscentPartners,
      firstAscentDate,
      rings,
      description_internal,
      secondLanguageDescription_internal,
      climbingStyle,
      name_internal,
      secondLanguageName_internal,
      state,
      nr,
      commentCount,
      lastUpdated,
    );
  }

  Route fromJson(Map<String, Object> json) {
    return Route.fromJson(json);
  }
}

/// @nodoc
const $Route = _$RouteTearOff();

/// @nodoc
mixin _$Route {
  @JsonKey(name: 'weg_ID')
  int get id =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'gipfelid') int gipfelId,
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwierigkeit')
  RouteDifficulty get difficulty => throw _privateConstructorUsedError;
  @JsonKey(name: 'erstbegvorstieg')
  String get firstAscentLead => throw _privateConstructorUsedError;
  @JsonKey(name: 'erstbegnachstieg')
  String get firstAscentPartners => throw _privateConstructorUsedError;
  @JsonKey(name: 'erstbegdatum')
  DateTime? get firstAscentDate => throw _privateConstructorUsedError;
  @IntConverter()
  @JsonKey(name: 'ringzahl')
  int? get rings => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegbeschr_d')
  String get description_internal => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegbeschr_cz')
  String get secondLanguageDescription_internal =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'kletterei')
  String get climbingStyle => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegname_d')
  String get name_internal => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegname_cz')
  String get secondLanguageName_internal => throw _privateConstructorUsedError;
  @IntConverter()
  @JsonKey(name: 'wegstatus')
  int? get state => throw _privateConstructorUsedError;
  @DoubleConverter()
  @JsonKey(name: 'wegnr')
  double? get nr => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'weg_ID')
          int id,
      @RouteDifficultyConverter()
      @JsonKey(name: 'schwierigkeit')
          RouteDifficulty difficulty,
      @JsonKey(name: 'erstbegvorstieg')
          String firstAscentLead,
      @JsonKey(name: 'erstbegnachstieg')
          String firstAscentPartners,
      @JsonKey(name: 'erstbegdatum')
          DateTime? firstAscentDate,
      @IntConverter()
      @JsonKey(name: 'ringzahl')
          int? rings,
      @JsonKey(name: 'wegbeschr_d')
          String description_internal,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription_internal,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name_internal,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName_internal,
      @IntConverter()
      @JsonKey(name: 'wegstatus')
          int? state,
      @DoubleConverter()
      @JsonKey(name: 'wegnr')
          double? nr,
      @JsonKey(name: 'comment_count')
          int commentCount,
      @JsonKey(name: 'insert_timestamp')
          DateTime lastUpdated});

  $RouteDifficultyCopyWith<$Res> get difficulty;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  final Route _value;
  // ignore: unused_field
  final $Res Function(Route) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? difficulty = freezed,
    Object? firstAscentLead = freezed,
    Object? firstAscentPartners = freezed,
    Object? firstAscentDate = freezed,
    Object? rings = freezed,
    Object? description_internal = freezed,
    Object? secondLanguageDescription_internal = freezed,
    Object? climbingStyle = freezed,
    Object? name_internal = freezed,
    Object? secondLanguageName_internal = freezed,
    Object? state = freezed,
    Object? nr = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as RouteDifficulty,
      firstAscentLead: firstAscentLead == freezed
          ? _value.firstAscentLead
          : firstAscentLead // ignore: cast_nullable_to_non_nullable
              as String,
      firstAscentPartners: firstAscentPartners == freezed
          ? _value.firstAscentPartners
          : firstAscentPartners // ignore: cast_nullable_to_non_nullable
              as String,
      firstAscentDate: firstAscentDate == freezed
          ? _value.firstAscentDate
          : firstAscentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rings: rings == freezed
          ? _value.rings
          : rings // ignore: cast_nullable_to_non_nullable
              as int?,
      description_internal: description_internal == freezed
          ? _value.description_internal
          : description_internal // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageDescription_internal: secondLanguageDescription_internal ==
              freezed
          ? _value.secondLanguageDescription_internal
          : secondLanguageDescription_internal // ignore: cast_nullable_to_non_nullable
              as String,
      climbingStyle: climbingStyle == freezed
          ? _value.climbingStyle
          : climbingStyle // ignore: cast_nullable_to_non_nullable
              as String,
      name_internal: name_internal == freezed
          ? _value.name_internal
          : name_internal // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageName_internal: secondLanguageName_internal == freezed
          ? _value.secondLanguageName_internal
          : secondLanguageName_internal // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      nr: nr == freezed
          ? _value.nr
          : nr // ignore: cast_nullable_to_non_nullable
              as double?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $RouteDifficultyCopyWith<$Res> get difficulty {
    return $RouteDifficultyCopyWith<$Res>(_value.difficulty, (value) {
      return _then(_value.copyWith(difficulty: value));
    });
  }
}

/// @nodoc
abstract class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) then) =
      __$RouteCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'weg_ID')
          int id,
      @RouteDifficultyConverter()
      @JsonKey(name: 'schwierigkeit')
          RouteDifficulty difficulty,
      @JsonKey(name: 'erstbegvorstieg')
          String firstAscentLead,
      @JsonKey(name: 'erstbegnachstieg')
          String firstAscentPartners,
      @JsonKey(name: 'erstbegdatum')
          DateTime? firstAscentDate,
      @IntConverter()
      @JsonKey(name: 'ringzahl')
          int? rings,
      @JsonKey(name: 'wegbeschr_d')
          String description_internal,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription_internal,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name_internal,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName_internal,
      @IntConverter()
      @JsonKey(name: 'wegstatus')
          int? state,
      @DoubleConverter()
      @JsonKey(name: 'wegnr')
          double? nr,
      @JsonKey(name: 'comment_count')
          int commentCount,
      @JsonKey(name: 'insert_timestamp')
          DateTime lastUpdated});

  @override
  $RouteDifficultyCopyWith<$Res> get difficulty;
}

/// @nodoc
class __$RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(_Route _value, $Res Function(_Route) _then)
      : super(_value, (v) => _then(v as _Route));

  @override
  _Route get _value => super._value as _Route;

  @override
  $Res call({
    Object? id = freezed,
    Object? difficulty = freezed,
    Object? firstAscentLead = freezed,
    Object? firstAscentPartners = freezed,
    Object? firstAscentDate = freezed,
    Object? rings = freezed,
    Object? description_internal = freezed,
    Object? secondLanguageDescription_internal = freezed,
    Object? climbingStyle = freezed,
    Object? name_internal = freezed,
    Object? secondLanguageName_internal = freezed,
    Object? state = freezed,
    Object? nr = freezed,
    Object? commentCount = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Route(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as RouteDifficulty,
      firstAscentLead == freezed
          ? _value.firstAscentLead
          : firstAscentLead // ignore: cast_nullable_to_non_nullable
              as String,
      firstAscentPartners == freezed
          ? _value.firstAscentPartners
          : firstAscentPartners // ignore: cast_nullable_to_non_nullable
              as String,
      firstAscentDate == freezed
          ? _value.firstAscentDate
          : firstAscentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rings == freezed
          ? _value.rings
          : rings // ignore: cast_nullable_to_non_nullable
              as int?,
      description_internal == freezed
          ? _value.description_internal
          : description_internal // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageDescription_internal == freezed
          ? _value.secondLanguageDescription_internal
          : secondLanguageDescription_internal // ignore: cast_nullable_to_non_nullable
              as String,
      climbingStyle == freezed
          ? _value.climbingStyle
          : climbingStyle // ignore: cast_nullable_to_non_nullable
              as String,
      name_internal == freezed
          ? _value.name_internal
          : name_internal // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageName_internal == freezed
          ? _value.secondLanguageName_internal
          : secondLanguageName_internal // ignore: cast_nullable_to_non_nullable
              as String,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      nr == freezed
          ? _value.nr
          : nr // ignore: cast_nullable_to_non_nullable
              as double?,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Route extends _Route {
  _$_Route(
      @JsonKey(name: 'weg_ID')
          this.id,
      @RouteDifficultyConverter()
      @JsonKey(name: 'schwierigkeit')
          this.difficulty,
      @JsonKey(name: 'erstbegvorstieg')
          this.firstAscentLead,
      @JsonKey(name: 'erstbegnachstieg')
          this.firstAscentPartners,
      @JsonKey(name: 'erstbegdatum')
          this.firstAscentDate,
      @IntConverter()
      @JsonKey(name: 'ringzahl')
          this.rings,
      @JsonKey(name: 'wegbeschr_d')
          this.description_internal,
      @JsonKey(name: 'wegbeschr_cz')
          this.secondLanguageDescription_internal,
      @JsonKey(name: 'kletterei')
          this.climbingStyle,
      @JsonKey(name: 'wegname_d')
          this.name_internal,
      @JsonKey(name: 'wegname_cz')
          this.secondLanguageName_internal,
      @IntConverter()
      @JsonKey(name: 'wegstatus')
          this.state,
      @DoubleConverter()
      @JsonKey(name: 'wegnr')
          this.nr,
      @JsonKey(name: 'comment_count')
          this.commentCount,
      @JsonKey(name: 'insert_timestamp')
          this.lastUpdated)
      : super._();

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$_$_RouteFromJson(json);

  @override
  @JsonKey(name: 'weg_ID')
  final int id;
  @override // @JsonKey(name: 'gipfelid') int gipfelId,
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwierigkeit')
  final RouteDifficulty difficulty;
  @override
  @JsonKey(name: 'erstbegvorstieg')
  final String firstAscentLead;
  @override
  @JsonKey(name: 'erstbegnachstieg')
  final String firstAscentPartners;
  @override
  @JsonKey(name: 'erstbegdatum')
  final DateTime? firstAscentDate;
  @override
  @IntConverter()
  @JsonKey(name: 'ringzahl')
  final int? rings;
  @override
  @JsonKey(name: 'wegbeschr_d')
  final String description_internal;
  @override
  @JsonKey(name: 'wegbeschr_cz')
  final String secondLanguageDescription_internal;
  @override
  @JsonKey(name: 'kletterei')
  final String climbingStyle;
  @override
  @JsonKey(name: 'wegname_d')
  final String name_internal;
  @override
  @JsonKey(name: 'wegname_cz')
  final String secondLanguageName_internal;
  @override
  @IntConverter()
  @JsonKey(name: 'wegstatus')
  final int? state;
  @override
  @DoubleConverter()
  @JsonKey(name: 'wegnr')
  final double? nr;
  @override
  @JsonKey(name: 'comment_count')
  final int commentCount;
  @override
  @JsonKey(name: 'insert_timestamp')
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Route(id: $id, difficulty: $difficulty, firstAscentLead: $firstAscentLead, firstAscentPartners: $firstAscentPartners, firstAscentDate: $firstAscentDate, rings: $rings, description_internal: $description_internal, secondLanguageDescription_internal: $secondLanguageDescription_internal, climbingStyle: $climbingStyle, name_internal: $name_internal, secondLanguageName_internal: $secondLanguageName_internal, state: $state, nr: $nr, commentCount: $commentCount, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Route &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.difficulty, difficulty) ||
                const DeepCollectionEquality()
                    .equals(other.difficulty, difficulty)) &&
            (identical(other.firstAscentLead, firstAscentLead) ||
                const DeepCollectionEquality()
                    .equals(other.firstAscentLead, firstAscentLead)) &&
            (identical(other.firstAscentPartners, firstAscentPartners) ||
                const DeepCollectionEquality()
                    .equals(other.firstAscentPartners, firstAscentPartners)) &&
            (identical(other.firstAscentDate, firstAscentDate) ||
                const DeepCollectionEquality()
                    .equals(other.firstAscentDate, firstAscentDate)) &&
            (identical(other.rings, rings) ||
                const DeepCollectionEquality().equals(other.rings, rings)) &&
            (identical(other.description_internal, description_internal) ||
                const DeepCollectionEquality().equals(
                    other.description_internal, description_internal)) &&
            (identical(other.secondLanguageDescription_internal,
                    secondLanguageDescription_internal) ||
                const DeepCollectionEquality().equals(
                    other.secondLanguageDescription_internal,
                    secondLanguageDescription_internal)) &&
            (identical(other.climbingStyle, climbingStyle) ||
                const DeepCollectionEquality()
                    .equals(other.climbingStyle, climbingStyle)) &&
            (identical(other.name_internal, name_internal) ||
                const DeepCollectionEquality()
                    .equals(other.name_internal, name_internal)) &&
            (identical(other.secondLanguageName_internal,
                    secondLanguageName_internal) ||
                const DeepCollectionEquality().equals(
                    other.secondLanguageName_internal,
                    secondLanguageName_internal)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.nr, nr) ||
                const DeepCollectionEquality().equals(other.nr, nr)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(difficulty) ^
      const DeepCollectionEquality().hash(firstAscentLead) ^
      const DeepCollectionEquality().hash(firstAscentPartners) ^
      const DeepCollectionEquality().hash(firstAscentDate) ^
      const DeepCollectionEquality().hash(rings) ^
      const DeepCollectionEquality().hash(description_internal) ^
      const DeepCollectionEquality().hash(secondLanguageDescription_internal) ^
      const DeepCollectionEquality().hash(climbingStyle) ^
      const DeepCollectionEquality().hash(name_internal) ^
      const DeepCollectionEquality().hash(secondLanguageName_internal) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(nr) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouteToJson(this);
  }
}

abstract class _Route extends Route {
  factory _Route(
      @JsonKey(name: 'weg_ID')
          int id,
      @RouteDifficultyConverter()
      @JsonKey(name: 'schwierigkeit')
          RouteDifficulty difficulty,
      @JsonKey(name: 'erstbegvorstieg')
          String firstAscentLead,
      @JsonKey(name: 'erstbegnachstieg')
          String firstAscentPartners,
      @JsonKey(name: 'erstbegdatum')
          DateTime? firstAscentDate,
      @IntConverter()
      @JsonKey(name: 'ringzahl')
          int? rings,
      @JsonKey(name: 'wegbeschr_d')
          String description_internal,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription_internal,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name_internal,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName_internal,
      @IntConverter()
      @JsonKey(name: 'wegstatus')
          int? state,
      @DoubleConverter()
      @JsonKey(name: 'wegnr')
          double? nr,
      @JsonKey(name: 'comment_count')
          int commentCount,
      @JsonKey(name: 'insert_timestamp')
          DateTime lastUpdated) = _$_Route;
  _Route._() : super._();

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  @JsonKey(name: 'weg_ID')
  int get id => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'gipfelid') int gipfelId,
  @RouteDifficultyConverter()
  @JsonKey(name: 'schwierigkeit')
  RouteDifficulty get difficulty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'erstbegvorstieg')
  String get firstAscentLead => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'erstbegnachstieg')
  String get firstAscentPartners => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'erstbegdatum')
  DateTime? get firstAscentDate => throw _privateConstructorUsedError;
  @override
  @IntConverter()
  @JsonKey(name: 'ringzahl')
  int? get rings => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegbeschr_d')
  String get description_internal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegbeschr_cz')
  String get secondLanguageDescription_internal =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kletterei')
  String get climbingStyle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegname_d')
  String get name_internal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegname_cz')
  String get secondLanguageName_internal => throw _privateConstructorUsedError;
  @override
  @IntConverter()
  @JsonKey(name: 'wegstatus')
  int? get state => throw _privateConstructorUsedError;
  @override
  @DoubleConverter()
  @JsonKey(name: 'wegnr')
  double? get nr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'comment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'insert_timestamp')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouteCopyWith<_Route> get copyWith => throw _privateConstructorUsedError;
}
