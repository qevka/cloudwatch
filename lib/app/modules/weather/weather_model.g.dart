// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      weatherReports: (json['weatherReports'] as List<dynamic>?)
          ?.map((e) => WeatherReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: json['time'] as String?,
      sunRise: json['sunRise'] as String?,
      sunSet: json['sunSet'] as String?,
      timezoneName: json['timezoneName'] as String?,
      parent: json['parent'] == null
          ? null
          : Region.fromJson(json['parent'] as Map<String, dynamic>),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      locationType: json['locationType'] as String?,
      woeid: json['woeid'] as int?,
      lattLong: json['lattLong'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'weatherReports': instance.weatherReports,
      'time': instance.time,
      'sunRise': instance.sunRise,
      'sunSet': instance.sunSet,
      'timezoneName': instance.timezoneName,
      'parent': instance.parent,
      'sources': instance.sources,
      'title': instance.title,
      'locationType': instance.locationType,
      'woeid': instance.woeid,
      'lattLong': instance.lattLong,
      'timezone': instance.timezone,
    };

WeatherReport _$WeatherReportFromJson(Map<String, dynamic> json) =>
    WeatherReport(
      id: json['id'] as int?,
      weatherStateName: json['weatherStateName'] as String?,
      weather: $enumDecodeNullable(_$WeatherTypesEnumMap, json['weather']),
      windDirectionCompass: json['windDirectionCompass'] as String?,
      created: json['created'] as String?,
      applicableDate: json['applicableDate'] as String?,
      minTemp: (json['minTemp'] as num?)?.toDouble(),
      maxTemp: (json['maxTemp'] as num?)?.toDouble(),
      theTemp: (json['theTemp'] as num?)?.toDouble(),
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windDirection: json['windDirection'] as String?,
      airPressure: (json['airPressure'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      visibility: (json['visibility'] as num?)?.toDouble(),
      predictability: json['predictability'] as int?,
    );

Map<String, dynamic> _$WeatherReportToJson(WeatherReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weatherStateName': instance.weatherStateName,
      'weather': _$WeatherTypesEnumMap[instance.weather],
      'windDirectionCompass': instance.windDirectionCompass,
      'created': instance.created,
      'applicableDate': instance.applicableDate,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'theTemp': instance.theTemp,
      'windSpeed': instance.windSpeed,
      'windDirection': instance.windDirection,
      'airPressure': instance.airPressure,
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'predictability': instance.predictability,
    };

const _$WeatherTypesEnumMap = {
  WeatherTypes.sn: 'sn',
  WeatherTypes.sl: 'sl',
  WeatherTypes.h: 'h',
  WeatherTypes.t: 't',
  WeatherTypes.hr: 'hr',
  WeatherTypes.lr: 'lr',
  WeatherTypes.s: 's',
  WeatherTypes.hc: 'hc',
  WeatherTypes.lc: 'lc',
  WeatherTypes.c: 'c',
};

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      title: json['title'] as String?,
      locationType: json['locationType'] as String?,
      woeid: json['woeid'] as int?,
      lattLong: json['lattLong'] as String?,
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'title': instance.title,
      'locationType': instance.locationType,
      'woeid': instance.woeid,
      'lattLong': instance.lattLong,
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
      crawlRate: json['crawlRate'] as int?,
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'url': instance.url,
      'crawlRate': instance.crawlRate,
    };
