import 'package:json_annotation/json_annotation.dart';

part 'meta_weather_model.g.dart';

@JsonSerializable()
class MetaWeatherModel {
  List<WeatherReport>? consolidatedWeather;
  String? time;
  String? sunRise;
  String? sunSet;
  String? timezoneName;
  Region? parent;
  List<Source>? sources;
  String? title;
  String? locationType;
  int? woeid;
  String? lattLong;
  String? timezone;

  MetaWeatherModel(
      {this.consolidatedWeather,
      this.time,
      this.sunRise,
      this.sunSet,
      this.timezoneName,
      this.parent,
      this.sources,
      this.title,
      this.locationType,
      this.woeid,
      this.lattLong,
      this.timezone});

  MetaWeatherModel.fromServer(Map<String, dynamic> json) {
    if (json['consolidated_weather'] != null) {
      consolidatedWeather = <WeatherReport>[];
      json['consolidated_weather'].forEach((v) {
        consolidatedWeather!.add(new WeatherReport.fromServer(v));
      });
    }
    time = json['time'];
    sunRise = json['sun_rise'];
    sunSet = json['sun_set'];
    timezoneName = json['timezone_name'];
    parent = json['parent'] != null ? new Region.fromServer(json['parent']) : null;
    if (json['sources'] != null) {
      sources = <Source>[];
      json['sources'].forEach((v) {
        sources!.add(new Source.fromServer(v));
      });
    }
    title = json['title'];
    locationType = json['location_type'];
    woeid = json['woeid'];
    lattLong = json['latt_long'];
    timezone = json['timezone'];
  }

  factory MetaWeatherModel.fromJson(Map<String, dynamic> json) => _$MetaWeatherModelFromJson(json);

  /// Connect the generated [_$MetaWeatherModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MetaWeatherModelToJson(this);
}

@JsonSerializable()
class WeatherReport {
  int? id;
  String? weatherStateName;
  String? weatherStateAbbr;
  String? windDirectionCompass;
  String? created;
  String? applicableDate;
  double? minTemp;
  double? maxTemp;
  double? theTemp;
  double? windSpeed;
  double? windDirection;
  double? airPressure;
  int? humidity;
  double? visibility;
  int? predictability;

  WeatherReport(
      {this.id,
      this.weatherStateName,
      this.weatherStateAbbr,
      this.windDirectionCompass,
      this.created,
      this.applicableDate,
      this.minTemp,
      this.maxTemp,
      this.theTemp,
      this.windSpeed,
      this.windDirection,
      this.airPressure,
      this.humidity,
      this.visibility,
      this.predictability});

  WeatherReport.fromServer(Map<String, dynamic> json) {
    id = json['id'];
    weatherStateName = json['weather_state_name'];
    weatherStateAbbr = json['weather_state_abbr'];
    windDirectionCompass = json['wind_direction_compass'];
    created = json['created'];
    applicableDate = json['applicable_date'];
    minTemp = json['min_temp'];
    maxTemp = json['max_temp'];
    theTemp = json['the_temp'];
    windSpeed = json['wind_speed'];
    windDirection = json['wind_direction'];
    airPressure = json['air_pressure'];
    humidity = json['humidity'];
    visibility = json['visibility'];
    predictability = json['predictability'];
  }

  factory WeatherReport.fromJson(Map<String, dynamic> json) => _$WeatherReportFromJson(json);

  /// Connect the generated [_$MetaWeatherModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WeatherReportToJson(this);
}

@JsonSerializable()
class Region {
  String? title;
  String? locationType;
  int? woeid;
  String? lattLong;

  Region({this.title, this.locationType, this.woeid, this.lattLong});

  Region.fromServer(Map<String, dynamic> json) {
    title = json['title'];
    locationType = json['location_type'];
    woeid = json['woeid'];
    lattLong = json['latt_long'];
  }

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  /// Connect the generated [_$MetaWeatherModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RegionToJson(this);
}

@JsonSerializable()
class Source {
  String? title;
  String? slug;
  String? url;
  int? crawlRate;

  Source({this.title, this.slug, this.url, this.crawlRate});

  Source.fromServer(Map<String, dynamic> json) {
    title = json['title'];
    slug = json['slug'];
    url = json['url'];
    crawlRate = json['crawl_rate'];
  }

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  /// Connect the generated [_$MetaWeatherModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
