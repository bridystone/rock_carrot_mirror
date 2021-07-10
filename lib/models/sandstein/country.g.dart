// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$_$_CountryFromJson(Map<String, dynamic> json) {
  return _$_Country(
    json['land'] as String,
    json['ISO3166'] as String,
    json['KFZ'] as String,
    json['count'] as int,
  );
}

Map<String, dynamic> _$_$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'land': instance.land,
      'ISO3166': instance.iso3166,
      'KFZ': instance.kfz,
      'count': instance.childCount,
    };
