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
      @JsonKey(name: 'weg_ID') int wegId,
      @JsonKey(name: 'gipfelid') int gipfelId,
      @JsonKey(name: 'schwierigkeit') String schwierigkeit,
      @JsonKey(name: 'erstbegvorstieg') String erstbegvorstieg,
      @JsonKey(name: 'erstbegnachstieg') String erstbegnachstieg,
      @JsonKey(name: 'erstbegdatum') String erstbegdatum,
      @JsonKey(name: 'ringzahl') String ringzahl,
      @JsonKey(name: 'wegbeschr_d') String wegbeschr,
      @JsonKey(name: 'wegbeschr_cz') String wegbeschrCZ,
      @JsonKey(name: 'kletterei') String kletterei,
      @JsonKey(name: 'wegname_d') String wegname,
      @JsonKey(name: 'wegname_cz') String wegnameCZ,
      @JsonKey(name: 'wegstatus') String wegstatus,
      @JsonKey(name: 'wegnr') String wegnr,
      @JsonKey(name: 'comment_count') int commentCount) {
    return _Route(
      wegId,
      gipfelId,
      schwierigkeit,
      erstbegvorstieg,
      erstbegnachstieg,
      erstbegdatum,
      ringzahl,
      wegbeschr,
      wegbeschrCZ,
      kletterei,
      wegname,
      wegnameCZ,
      wegstatus,
      wegnr,
      commentCount,
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
  int get wegId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gipfelid')
  int get gipfelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'schwierigkeit')
  String get schwierigkeit => throw _privateConstructorUsedError;
  @JsonKey(name: 'erstbegvorstieg')
  String get erstbegvorstieg => throw _privateConstructorUsedError;
  @JsonKey(name: 'erstbegnachstieg')
  String get erstbegnachstieg => throw _privateConstructorUsedError;
  @JsonKey(name: 'erstbegdatum')
  String get erstbegdatum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ringzahl')
  String get ringzahl => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegbeschr_d')
  String get wegbeschr => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegbeschr_cz')
  String get wegbeschrCZ => throw _privateConstructorUsedError;
  @JsonKey(name: 'kletterei')
  String get kletterei => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegname_d')
  String get wegname => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegname_cz')
  String get wegnameCZ => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegstatus')
  String get wegstatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'wegnr')
  String get wegnr => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'weg_ID') int wegId,
      @JsonKey(name: 'gipfelid') int gipfelId,
      @JsonKey(name: 'schwierigkeit') String schwierigkeit,
      @JsonKey(name: 'erstbegvorstieg') String erstbegvorstieg,
      @JsonKey(name: 'erstbegnachstieg') String erstbegnachstieg,
      @JsonKey(name: 'erstbegdatum') String erstbegdatum,
      @JsonKey(name: 'ringzahl') String ringzahl,
      @JsonKey(name: 'wegbeschr_d') String wegbeschr,
      @JsonKey(name: 'wegbeschr_cz') String wegbeschrCZ,
      @JsonKey(name: 'kletterei') String kletterei,
      @JsonKey(name: 'wegname_d') String wegname,
      @JsonKey(name: 'wegname_cz') String wegnameCZ,
      @JsonKey(name: 'wegstatus') String wegstatus,
      @JsonKey(name: 'wegnr') String wegnr,
      @JsonKey(name: 'comment_count') int commentCount});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  final Route _value;
  // ignore: unused_field
  final $Res Function(Route) _then;

  @override
  $Res call({
    Object? wegId = freezed,
    Object? gipfelId = freezed,
    Object? schwierigkeit = freezed,
    Object? erstbegvorstieg = freezed,
    Object? erstbegnachstieg = freezed,
    Object? erstbegdatum = freezed,
    Object? ringzahl = freezed,
    Object? wegbeschr = freezed,
    Object? wegbeschrCZ = freezed,
    Object? kletterei = freezed,
    Object? wegname = freezed,
    Object? wegnameCZ = freezed,
    Object? wegstatus = freezed,
    Object? wegnr = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      wegId: wegId == freezed
          ? _value.wegId
          : wegId // ignore: cast_nullable_to_non_nullable
              as int,
      gipfelId: gipfelId == freezed
          ? _value.gipfelId
          : gipfelId // ignore: cast_nullable_to_non_nullable
              as int,
      schwierigkeit: schwierigkeit == freezed
          ? _value.schwierigkeit
          : schwierigkeit // ignore: cast_nullable_to_non_nullable
              as String,
      erstbegvorstieg: erstbegvorstieg == freezed
          ? _value.erstbegvorstieg
          : erstbegvorstieg // ignore: cast_nullable_to_non_nullable
              as String,
      erstbegnachstieg: erstbegnachstieg == freezed
          ? _value.erstbegnachstieg
          : erstbegnachstieg // ignore: cast_nullable_to_non_nullable
              as String,
      erstbegdatum: erstbegdatum == freezed
          ? _value.erstbegdatum
          : erstbegdatum // ignore: cast_nullable_to_non_nullable
              as String,
      ringzahl: ringzahl == freezed
          ? _value.ringzahl
          : ringzahl // ignore: cast_nullable_to_non_nullable
              as String,
      wegbeschr: wegbeschr == freezed
          ? _value.wegbeschr
          : wegbeschr // ignore: cast_nullable_to_non_nullable
              as String,
      wegbeschrCZ: wegbeschrCZ == freezed
          ? _value.wegbeschrCZ
          : wegbeschrCZ // ignore: cast_nullable_to_non_nullable
              as String,
      kletterei: kletterei == freezed
          ? _value.kletterei
          : kletterei // ignore: cast_nullable_to_non_nullable
              as String,
      wegname: wegname == freezed
          ? _value.wegname
          : wegname // ignore: cast_nullable_to_non_nullable
              as String,
      wegnameCZ: wegnameCZ == freezed
          ? _value.wegnameCZ
          : wegnameCZ // ignore: cast_nullable_to_non_nullable
              as String,
      wegstatus: wegstatus == freezed
          ? _value.wegstatus
          : wegstatus // ignore: cast_nullable_to_non_nullable
              as String,
      wegnr: wegnr == freezed
          ? _value.wegnr
          : wegnr // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) then) =
      __$RouteCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'weg_ID') int wegId,
      @JsonKey(name: 'gipfelid') int gipfelId,
      @JsonKey(name: 'schwierigkeit') String schwierigkeit,
      @JsonKey(name: 'erstbegvorstieg') String erstbegvorstieg,
      @JsonKey(name: 'erstbegnachstieg') String erstbegnachstieg,
      @JsonKey(name: 'erstbegdatum') String erstbegdatum,
      @JsonKey(name: 'ringzahl') String ringzahl,
      @JsonKey(name: 'wegbeschr_d') String wegbeschr,
      @JsonKey(name: 'wegbeschr_cz') String wegbeschrCZ,
      @JsonKey(name: 'kletterei') String kletterei,
      @JsonKey(name: 'wegname_d') String wegname,
      @JsonKey(name: 'wegname_cz') String wegnameCZ,
      @JsonKey(name: 'wegstatus') String wegstatus,
      @JsonKey(name: 'wegnr') String wegnr,
      @JsonKey(name: 'comment_count') int commentCount});
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
    Object? wegId = freezed,
    Object? gipfelId = freezed,
    Object? schwierigkeit = freezed,
    Object? erstbegvorstieg = freezed,
    Object? erstbegnachstieg = freezed,
    Object? erstbegdatum = freezed,
    Object? ringzahl = freezed,
    Object? wegbeschr = freezed,
    Object? wegbeschrCZ = freezed,
    Object? kletterei = freezed,
    Object? wegname = freezed,
    Object? wegnameCZ = freezed,
    Object? wegstatus = freezed,
    Object? wegnr = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_Route(
      wegId == freezed
          ? _value.wegId
          : wegId // ignore: cast_nullable_to_non_nullable
              as int,
      gipfelId == freezed
          ? _value.gipfelId
          : gipfelId // ignore: cast_nullable_to_non_nullable
              as int,
      schwierigkeit == freezed
          ? _value.schwierigkeit
          : schwierigkeit // ignore: cast_nullable_to_non_nullable
              as String,
      erstbegvorstieg == freezed
          ? _value.erstbegvorstieg
          : erstbegvorstieg // ignore: cast_nullable_to_non_nullable
              as String,
      erstbegnachstieg == freezed
          ? _value.erstbegnachstieg
          : erstbegnachstieg // ignore: cast_nullable_to_non_nullable
              as String,
      erstbegdatum == freezed
          ? _value.erstbegdatum
          : erstbegdatum // ignore: cast_nullable_to_non_nullable
              as String,
      ringzahl == freezed
          ? _value.ringzahl
          : ringzahl // ignore: cast_nullable_to_non_nullable
              as String,
      wegbeschr == freezed
          ? _value.wegbeschr
          : wegbeschr // ignore: cast_nullable_to_non_nullable
              as String,
      wegbeschrCZ == freezed
          ? _value.wegbeschrCZ
          : wegbeschrCZ // ignore: cast_nullable_to_non_nullable
              as String,
      kletterei == freezed
          ? _value.kletterei
          : kletterei // ignore: cast_nullable_to_non_nullable
              as String,
      wegname == freezed
          ? _value.wegname
          : wegname // ignore: cast_nullable_to_non_nullable
              as String,
      wegnameCZ == freezed
          ? _value.wegnameCZ
          : wegnameCZ // ignore: cast_nullable_to_non_nullable
              as String,
      wegstatus == freezed
          ? _value.wegstatus
          : wegstatus // ignore: cast_nullable_to_non_nullable
              as String,
      wegnr == freezed
          ? _value.wegnr
          : wegnr // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Route implements _Route {
  _$_Route(
      @JsonKey(name: 'weg_ID') this.wegId,
      @JsonKey(name: 'gipfelid') this.gipfelId,
      @JsonKey(name: 'schwierigkeit') this.schwierigkeit,
      @JsonKey(name: 'erstbegvorstieg') this.erstbegvorstieg,
      @JsonKey(name: 'erstbegnachstieg') this.erstbegnachstieg,
      @JsonKey(name: 'erstbegdatum') this.erstbegdatum,
      @JsonKey(name: 'ringzahl') this.ringzahl,
      @JsonKey(name: 'wegbeschr_d') this.wegbeschr,
      @JsonKey(name: 'wegbeschr_cz') this.wegbeschrCZ,
      @JsonKey(name: 'kletterei') this.kletterei,
      @JsonKey(name: 'wegname_d') this.wegname,
      @JsonKey(name: 'wegname_cz') this.wegnameCZ,
      @JsonKey(name: 'wegstatus') this.wegstatus,
      @JsonKey(name: 'wegnr') this.wegnr,
      @JsonKey(name: 'comment_count') this.commentCount);

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$_$_RouteFromJson(json);

  @override
  @JsonKey(name: 'weg_ID')
  final int wegId;
  @override
  @JsonKey(name: 'gipfelid')
  final int gipfelId;
  @override
  @JsonKey(name: 'schwierigkeit')
  final String schwierigkeit;
  @override
  @JsonKey(name: 'erstbegvorstieg')
  final String erstbegvorstieg;
  @override
  @JsonKey(name: 'erstbegnachstieg')
  final String erstbegnachstieg;
  @override
  @JsonKey(name: 'erstbegdatum')
  final String erstbegdatum;
  @override
  @JsonKey(name: 'ringzahl')
  final String ringzahl;
  @override
  @JsonKey(name: 'wegbeschr_d')
  final String wegbeschr;
  @override
  @JsonKey(name: 'wegbeschr_cz')
  final String wegbeschrCZ;
  @override
  @JsonKey(name: 'kletterei')
  final String kletterei;
  @override
  @JsonKey(name: 'wegname_d')
  final String wegname;
  @override
  @JsonKey(name: 'wegname_cz')
  final String wegnameCZ;
  @override
  @JsonKey(name: 'wegstatus')
  final String wegstatus;
  @override
  @JsonKey(name: 'wegnr')
  final String wegnr;
  @override
  @JsonKey(name: 'comment_count')
  final int commentCount;

  @override
  String toString() {
    return 'Route(wegId: $wegId, gipfelId: $gipfelId, schwierigkeit: $schwierigkeit, erstbegvorstieg: $erstbegvorstieg, erstbegnachstieg: $erstbegnachstieg, erstbegdatum: $erstbegdatum, ringzahl: $ringzahl, wegbeschr: $wegbeschr, wegbeschrCZ: $wegbeschrCZ, kletterei: $kletterei, wegname: $wegname, wegnameCZ: $wegnameCZ, wegstatus: $wegstatus, wegnr: $wegnr, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Route &&
            (identical(other.wegId, wegId) ||
                const DeepCollectionEquality().equals(other.wegId, wegId)) &&
            (identical(other.gipfelId, gipfelId) ||
                const DeepCollectionEquality()
                    .equals(other.gipfelId, gipfelId)) &&
            (identical(other.schwierigkeit, schwierigkeit) ||
                const DeepCollectionEquality()
                    .equals(other.schwierigkeit, schwierigkeit)) &&
            (identical(other.erstbegvorstieg, erstbegvorstieg) ||
                const DeepCollectionEquality()
                    .equals(other.erstbegvorstieg, erstbegvorstieg)) &&
            (identical(other.erstbegnachstieg, erstbegnachstieg) ||
                const DeepCollectionEquality()
                    .equals(other.erstbegnachstieg, erstbegnachstieg)) &&
            (identical(other.erstbegdatum, erstbegdatum) ||
                const DeepCollectionEquality()
                    .equals(other.erstbegdatum, erstbegdatum)) &&
            (identical(other.ringzahl, ringzahl) ||
                const DeepCollectionEquality()
                    .equals(other.ringzahl, ringzahl)) &&
            (identical(other.wegbeschr, wegbeschr) ||
                const DeepCollectionEquality()
                    .equals(other.wegbeschr, wegbeschr)) &&
            (identical(other.wegbeschrCZ, wegbeschrCZ) ||
                const DeepCollectionEquality()
                    .equals(other.wegbeschrCZ, wegbeschrCZ)) &&
            (identical(other.kletterei, kletterei) ||
                const DeepCollectionEquality()
                    .equals(other.kletterei, kletterei)) &&
            (identical(other.wegname, wegname) ||
                const DeepCollectionEquality()
                    .equals(other.wegname, wegname)) &&
            (identical(other.wegnameCZ, wegnameCZ) ||
                const DeepCollectionEquality()
                    .equals(other.wegnameCZ, wegnameCZ)) &&
            (identical(other.wegstatus, wegstatus) ||
                const DeepCollectionEquality()
                    .equals(other.wegstatus, wegstatus)) &&
            (identical(other.wegnr, wegnr) ||
                const DeepCollectionEquality().equals(other.wegnr, wegnr)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wegId) ^
      const DeepCollectionEquality().hash(gipfelId) ^
      const DeepCollectionEquality().hash(schwierigkeit) ^
      const DeepCollectionEquality().hash(erstbegvorstieg) ^
      const DeepCollectionEquality().hash(erstbegnachstieg) ^
      const DeepCollectionEquality().hash(erstbegdatum) ^
      const DeepCollectionEquality().hash(ringzahl) ^
      const DeepCollectionEquality().hash(wegbeschr) ^
      const DeepCollectionEquality().hash(wegbeschrCZ) ^
      const DeepCollectionEquality().hash(kletterei) ^
      const DeepCollectionEquality().hash(wegname) ^
      const DeepCollectionEquality().hash(wegnameCZ) ^
      const DeepCollectionEquality().hash(wegstatus) ^
      const DeepCollectionEquality().hash(wegnr) ^
      const DeepCollectionEquality().hash(commentCount);

  @JsonKey(ignore: true)
  @override
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouteToJson(this);
  }
}

abstract class _Route implements Route {
  factory _Route(
      @JsonKey(name: 'weg_ID') int wegId,
      @JsonKey(name: 'gipfelid') int gipfelId,
      @JsonKey(name: 'schwierigkeit') String schwierigkeit,
      @JsonKey(name: 'erstbegvorstieg') String erstbegvorstieg,
      @JsonKey(name: 'erstbegnachstieg') String erstbegnachstieg,
      @JsonKey(name: 'erstbegdatum') String erstbegdatum,
      @JsonKey(name: 'ringzahl') String ringzahl,
      @JsonKey(name: 'wegbeschr_d') String wegbeschr,
      @JsonKey(name: 'wegbeschr_cz') String wegbeschrCZ,
      @JsonKey(name: 'kletterei') String kletterei,
      @JsonKey(name: 'wegname_d') String wegname,
      @JsonKey(name: 'wegname_cz') String wegnameCZ,
      @JsonKey(name: 'wegstatus') String wegstatus,
      @JsonKey(name: 'wegnr') String wegnr,
      @JsonKey(name: 'comment_count') int commentCount) = _$_Route;

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  @JsonKey(name: 'weg_ID')
  int get wegId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gipfelid')
  int get gipfelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'schwierigkeit')
  String get schwierigkeit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'erstbegvorstieg')
  String get erstbegvorstieg => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'erstbegnachstieg')
  String get erstbegnachstieg => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'erstbegdatum')
  String get erstbegdatum => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ringzahl')
  String get ringzahl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegbeschr_d')
  String get wegbeschr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegbeschr_cz')
  String get wegbeschrCZ => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kletterei')
  String get kletterei => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegname_d')
  String get wegname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegname_cz')
  String get wegnameCZ => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegstatus')
  String get wegstatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wegnr')
  String get wegnr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'comment_count')
  int get commentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouteCopyWith<_Route> get copyWith => throw _privateConstructorUsedError;
}
