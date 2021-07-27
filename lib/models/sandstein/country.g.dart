// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension CountryCopyWith on Country {
  Country copyWith({
    bool? isPinned,
    String? name,
  }) {
    return Country(
      isPinned: isPinned ?? this.isPinned,
      name: name ?? this.name,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country(
    name: json['land'] as String,
  );
}
