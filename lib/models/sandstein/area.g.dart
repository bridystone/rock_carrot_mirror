// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension AreaCopyWith on Area {
  Area copyWith({
    int? commentCount,
    int? id,
    bool? isPinned,
    DateTime? lastUpdated,
    String? name,
  }) {
    return Area(
      commentCount: commentCount ?? this.commentCount,
      id: id ?? this.id,
      isPinned: isPinned ?? this.isPinned,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      name: name ?? this.name,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Area _$AreaFromJson(Map<String, dynamic> json) {
  return Area(
    id: json['gebiet_ID'] as int,
    name: json['gebiet'] as String,
    commentCount: json['komment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
  );
}
