import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
class Baseitem extends Equatable {
  /// data stored in Json Persistence
  @JsonKey(ignore: true)
  final bool isPinned;

  const Baseitem({this.isPinned = false});
  @override
  List<Object?> get props => [isPinned];
}
