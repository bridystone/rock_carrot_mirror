// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentsEventTearOff {
  const _$CommentsEventTearOff();

  _RequestComments requestComments(CommentType type, int id) {
    return _RequestComments(
      type,
      id,
    );
  }
}

/// @nodoc
const $CommentsEvent = _$CommentsEventTearOff();

/// @nodoc
mixin _$CommentsEvent {
  CommentType get type => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentType type, int id) requestComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentType type, int id)? requestComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestComments value) requestComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestComments value)? requestComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsEventCopyWith<CommentsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
          CommentsEvent value, $Res Function(CommentsEvent) then) =
      _$CommentsEventCopyWithImpl<$Res>;
  $Res call({CommentType type, int id});
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  final CommentsEvent _value;
  // ignore: unused_field
  final $Res Function(CommentsEvent) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CommentType,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RequestCommentsCopyWith<$Res>
    implements $CommentsEventCopyWith<$Res> {
  factory _$RequestCommentsCopyWith(
          _RequestComments value, $Res Function(_RequestComments) then) =
      __$RequestCommentsCopyWithImpl<$Res>;
  @override
  $Res call({CommentType type, int id});
}

/// @nodoc
class __$RequestCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements _$RequestCommentsCopyWith<$Res> {
  __$RequestCommentsCopyWithImpl(
      _RequestComments _value, $Res Function(_RequestComments) _then)
      : super(_value, (v) => _then(v as _RequestComments));

  @override
  _RequestComments get _value => super._value as _RequestComments;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_RequestComments(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CommentType,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestComments implements _RequestComments {
  const _$_RequestComments(this.type, this.id);

  @override
  final CommentType type;
  @override
  final int id;

  @override
  String toString() {
    return 'CommentsEvent.requestComments(type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestComments &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RequestCommentsCopyWith<_RequestComments> get copyWith =>
      __$RequestCommentsCopyWithImpl<_RequestComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommentType type, int id) requestComments,
  }) {
    return requestComments(type, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommentType type, int id)? requestComments,
    required TResult orElse(),
  }) {
    if (requestComments != null) {
      return requestComments(type, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestComments value) requestComments,
  }) {
    return requestComments(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestComments value)? requestComments,
    required TResult orElse(),
  }) {
    if (requestComments != null) {
      return requestComments(this);
    }
    return orElse();
  }
}

abstract class _RequestComments implements CommentsEvent {
  const factory _RequestComments(CommentType type, int id) = _$_RequestComments;

  @override
  CommentType get type => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestCommentsCopyWith<_RequestComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentsStateTearOff {
  const _$CommentsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InProgress inProgress() {
    return const _InProgress();
  }

  _CommentsReceived commentsReceived(List<Comment> comments) {
    return _CommentsReceived(
      comments,
    );
  }

  _Failure failure(dynamic exception) {
    return _Failure(
      exception,
    );
  }
}

/// @nodoc
const $CommentsState = _$CommentsStateTearOff();

/// @nodoc
mixin _$CommentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Comment> comments) commentsReceived,
    required TResult Function(dynamic exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Comment> comments)? commentsReceived,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  final CommentsState _value;
  // ignore: unused_field
  final $Res Function(CommentsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
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
    return 'CommentsState.initial()';
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
    required TResult Function(List<Comment> comments) commentsReceived,
    required TResult Function(dynamic exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Comment> comments)? commentsReceived,
    TResult Function(dynamic exception)? failure,
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
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommentsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
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
    return 'CommentsState.inProgress()';
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
    required TResult Function(List<Comment> comments) commentsReceived,
    required TResult Function(dynamic exception) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Comment> comments)? commentsReceived,
    TResult Function(dynamic exception)? failure,
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
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements CommentsState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$CommentsReceivedCopyWith<$Res> {
  factory _$CommentsReceivedCopyWith(
          _CommentsReceived value, $Res Function(_CommentsReceived) then) =
      __$CommentsReceivedCopyWithImpl<$Res>;
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$CommentsReceivedCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements _$CommentsReceivedCopyWith<$Res> {
  __$CommentsReceivedCopyWithImpl(
      _CommentsReceived _value, $Res Function(_CommentsReceived) _then)
      : super(_value, (v) => _then(v as _CommentsReceived));

  @override
  _CommentsReceived get _value => super._value as _CommentsReceived;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_CommentsReceived(
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$_CommentsReceived implements _CommentsReceived {
  const _$_CommentsReceived(this.comments);

  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'CommentsState.commentsReceived(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentsReceived &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      __$CommentsReceivedCopyWithImpl<_CommentsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Comment> comments) commentsReceived,
    required TResult Function(dynamic exception) failure,
  }) {
    return commentsReceived(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Comment> comments)? commentsReceived,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return commentsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(this);
    }
    return orElse();
  }
}

abstract class _CommentsReceived implements CommentsState {
  const factory _CommentsReceived(List<Comment> comments) = _$_CommentsReceived;

  List<Comment> get comments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({dynamic exception});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Failure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.exception);

  @override
  final dynamic exception;

  @override
  String toString() {
    return 'CommentsState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<Comment> comments) commentsReceived,
    required TResult Function(dynamic exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<Comment> comments)? commentsReceived,
    TResult Function(dynamic exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CommentsState {
  const factory _Failure(dynamic exception) = _$_Failure;

  dynamic get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
