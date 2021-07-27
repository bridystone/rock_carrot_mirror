// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rock.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension RockCopyWith on Rock {
  Rock copyWith({
    int? commentCount,
    int? id,
    bool? isPinned,
    DateTime? lastUpdated,
    DateTime? lastUpdatedTT,
    double? latitude,
    double? longitude,
    int? lowerHeight,
    String? name_internal,
    double? nr,
    String? secondLanguageName_internal,
    RockState? state,
    RockType? type,
    int? upperHeight,
  }) {
    return Rock(
      commentCount: commentCount ?? this.commentCount,
      id: id ?? this.id,
      isPinned: isPinned ?? this.isPinned,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      lastUpdatedTT: lastUpdatedTT ?? this.lastUpdatedTT,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lowerHeight: lowerHeight ?? this.lowerHeight,
      name_internal: name_internal ?? this.name_internal,
      nr: nr ?? this.nr,
      secondLanguageName_internal:
          secondLanguageName_internal ?? this.secondLanguageName_internal,
      state: state ?? this.state,
      type: type ?? this.type,
      upperHeight: upperHeight ?? this.upperHeight,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rock _$RockFromJson(Map<String, dynamic> json) {
  return Rock(
    id: json['gipfel_ID'] as int,
    nr: const DoubleConverter().fromJson(json['gipfelnr'] as String?),
    name_internal: json['gipfelname_d'] as String,
    secondLanguageName_internal: json['gipfelname_cz'] as String,
    state: const RockStateConverter().fromJson(json['status'] as String?),
    type: const RockTypeConverter().fromJson(json['typ'] as String?),
    longitude: const DoubleConverter().fromJson(json['vgrd'] as String?),
    latitude: const DoubleConverter().fromJson(json['ngrd'] as String?),
    upperHeight:
        const IntConverter().fromJson(json['schartenhoehe'] as String?),
    lowerHeight: const IntConverter().fromJson(json['talhoehe'] as String?),
    commentCount: json['komment_count'] as int,
    lastUpdated: DateTime.parse(json['insert_timestamp'] as String),
    lastUpdatedTT: json['tt_insert_timestamp'] == null
        ? null
        : DateTime.parse(json['tt_insert_timestamp'] as String),
  );
}
