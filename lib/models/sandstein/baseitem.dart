import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'baseitem.g.dart';

@immutable
@CopyWith()
class Baseitem extends Equatable {
  /// data stored in Json Persistence
  @JsonKey(ignore: true)
  final bool isPinned;

  const Baseitem({this.isPinned = false});
  @override
  List<Object?> get props => [isPinned];
}
