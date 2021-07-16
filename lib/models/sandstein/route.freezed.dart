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
          String description,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName,
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
      description,
      secondLanguageDescription,
      climbingStyle,
      name,
      secondLanguageName,
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
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegbeschr_cz')
  String get secondLanguageDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'kletterei')
  String get climbingStyle => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegname_d')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegname_cz')
  String get secondLanguageName => throw _privateConstructorUsedError;
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
          String description,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName,
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
    Object? description = freezed,
    Object? secondLanguageDescription = freezed,
    Object? climbingStyle = freezed,
    Object? name = freezed,
    Object? secondLanguageName = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageDescription: secondLanguageDescription == freezed
          ? _value.secondLanguageDescription
          : secondLanguageDescription // ignore: cast_nullable_to_non_nullable
              as String,
      climbingStyle: climbingStyle == freezed
          ? _value.climbingStyle
          : climbingStyle // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageName: secondLanguageName == freezed
          ? _value.secondLanguageName
          : secondLanguageName // ignore: cast_nullable_to_non_nullable
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
          String description,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName,
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
    Object? description = freezed,
    Object? secondLanguageDescription = freezed,
    Object? climbingStyle = freezed,
    Object? name = freezed,
    Object? secondLanguageName = freezed,
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
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageDescription == freezed
          ? _value.secondLanguageDescription
          : secondLanguageDescription // ignore: cast_nullable_to_non_nullable
              as String,
      climbingStyle == freezed
          ? _value.climbingStyle
          : climbingStyle // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondLanguageName == freezed
          ? _value.secondLanguageName
          : secondLanguageName // ignore: cast_nullable_to_non_nullable
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
          this.description,
      @JsonKey(name: 'wegbeschr_cz')
          this.secondLanguageDescription,
      @JsonKey(name: 'kletterei')
          this.climbingStyle,
      @JsonKey(name: 'wegname_d')
          this.name,
      @JsonKey(name: 'wegname_cz')
          this.secondLanguageName,
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
  final String description;
  @override
  @JsonKey(name: 'wegbeschr_cz')
  final String secondLanguageDescription;
  @override
  @JsonKey(name: 'kletterei')
  final String climbingStyle;
  @override
  @JsonKey(name: 'wegname_d')
  final String name;
  @override
  @JsonKey(name: 'wegname_cz')
  final String secondLanguageName;
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
    return 'Route(id: $id, difficulty: $difficulty, firstAscentLead: $firstAscentLead, firstAscentPartners: $firstAscentPartners, firstAscentDate: $firstAscentDate, rings: $rings, description: $description, secondLanguageDescription: $secondLanguageDescription, climbingStyle: $climbingStyle, name: $name, secondLanguageName: $secondLanguageName, state: $state, nr: $nr, commentCount: $commentCount, lastUpdated: $lastUpdated)';
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
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.secondLanguageDescription,
                    secondLanguageDescription) ||
                const DeepCollectionEquality().equals(
                    other.secondLanguageDescription,
                    secondLanguageDescription)) &&
            (identical(other.climbingStyle, climbingStyle) ||
                const DeepCollectionEquality()
                    .equals(other.climbingStyle, climbingStyle)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.secondLanguageName, secondLanguageName) ||
                const DeepCollectionEquality()
                    .equals(other.secondLanguageName, secondLanguageName)) &&
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
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(secondLanguageDescription) ^
      const DeepCollectionEquality().hash(climbingStyle) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(secondLanguageName) ^
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
          String description,
      @JsonKey(name: 'wegbeschr_cz')
          String secondLanguageDescription,
      @JsonKey(name: 'kletterei')
          String climbingStyle,
      @JsonKey(name: 'wegname_d')
          String name,
      @JsonKey(name: 'wegname_cz')
          String secondLanguageName,
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
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegbeschr_cz')
  String get secondLanguageDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kletterei')
  String get climbingStyle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegname_d')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegname_cz')
  String get secondLanguageName => throw _privateConstructorUsedError;
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
