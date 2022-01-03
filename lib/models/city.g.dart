// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      country: json['country'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'country': instance.country,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
    };
