// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subarea.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension SubareaCopyWith on Subarea {
  Subarea copyWith({
    int? commentCount,
    int? id,
    bool? isPinned,
    DateTime? lastUpdated,
    String? name_internal,
    double? nr,
    String? secondLanguageName_internal,
  }) {
    return Subarea(
      commentCount: commentCount ?? this.commentCount,
      id: id ?? this.id,
      isPinned: isPinned ?? this.isPinned,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      name_internal: name_internal ?? this.name_internal,
      nr: nr ?? this.nr,
      secondLanguageName_internal:
          secondLanguageName_internal ?? this.secondLanguageName_internal,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subarea _$SubareaFromJson(Map<String, dynamic> json) {
  return Subarea(
    id: json['sektor_ID'] as int,
    nr: const DoubleConverter().fromJson(json['sektornr'] as String?),
    name_internal: json['sektorname_d'] as String,
    secondLanguageName_internal: json['sektorname_cz'] as String,
    commentCount: json['komment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
  );
}
