// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateState _$UpdateStateFromJson(Map<String, dynamic> json) {
  return _UpdateState.fromJson(json);
}

/// @nodoc
class _$UpdateStateTearOff {
  const _$UpdateStateTearOff();

  _UpdateState call(
      UpdateType type,
      String id,
      @EpochConverter() DateTime timestamp,
      @EpochConverter() DateTime timestampTT) {
    return _UpdateState(
      type,
      id,
      timestamp,
      timestampTT,
    );
  }

  UpdateState fromJson(Map<String, Object> json) {
    return UpdateState.fromJson(json);
  }
}

/// @nodoc
const $UpdateState = _$UpdateStateTearOff();

/// @nodoc
mixin _$UpdateState {
  UpdateType get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @EpochConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  @EpochConverter()
  DateTime get timestampTT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res>;
  $Res call(
      {UpdateType type,
      String id,
      @EpochConverter() DateTime timestamp,
      @EpochConverter() DateTime timestampTT});
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res> implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(this._value, this._then);

  final UpdateState _value;
  // ignore: unused_field
  final $Res Function(UpdateState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? timestampTT = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UpdateType,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampTT: timestampTT == freezed
          ? _value.timestampTT
          : timestampTT // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UpdateStateCopyWith<$Res>
    implements $UpdateStateCopyWith<$Res> {
  factory _$UpdateStateCopyWith(
          _UpdateState value, $Res Function(_UpdateState) then) =
      __$UpdateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UpdateType type,
      String id,
      @EpochConverter() DateTime timestamp,
      @EpochConverter() DateTime timestampTT});
}

/// @nodoc
class __$UpdateStateCopyWithImpl<$Res> extends _$UpdateStateCopyWithImpl<$Res>
    implements _$UpdateStateCopyWith<$Res> {
  __$UpdateStateCopyWithImpl(
      _UpdateState _value, $Res Function(_UpdateState) _then)
      : super(_value, (v) => _then(v as _UpdateState));

  @override
  _UpdateState get _value => super._value as _UpdateState;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? timestampTT = freezed,
  }) {
    return _then(_UpdateState(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UpdateType,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestampTT == freezed
          ? _value.timestampTT
          : timestampTT // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateState implements _UpdateState {
  _$_UpdateState(this.type, this.id, @EpochConverter() this.timestamp,
      @EpochConverter() this.timestampTT);

  factory _$_UpdateState.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateStateFromJson(json);

  @override
  final UpdateType type;
  @override
  final String id;
  @override
  @EpochConverter()
  final DateTime timestamp;
  @override
  @EpochConverter()
  final DateTime timestampTT;

  @override
  String toString() {
    return 'UpdateState(type: $type, id: $id, timestamp: $timestamp, timestampTT: $timestampTT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.timestampTT, timestampTT) ||
                const DeepCollectionEquality()
                    .equals(other.timestampTT, timestampTT)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(timestampTT);

  @JsonKey(ignore: true)
  @override
  _$UpdateStateCopyWith<_UpdateState> get copyWith =>
      __$UpdateStateCopyWithImpl<_UpdateState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateStateToJson(this);
  }
}

abstract class _UpdateState implements UpdateState {
  factory _UpdateState(
      UpdateType type,
      String id,
      @EpochConverter() DateTime timestamp,
      @EpochConverter() DateTime timestampTT) = _$_UpdateState;

  factory _UpdateState.fromJson(Map<String, dynamic> json) =
      _$_UpdateState.fromJson;

  @override
  UpdateType get type => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @EpochConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  @EpochConverter()
  DateTime get timestampTT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateStateCopyWith<_UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
