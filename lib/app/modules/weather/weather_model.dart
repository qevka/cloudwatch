import 'package:cloudwatch/app/modules/weather/weather_types.dart';

class WeatherModel {
  List<WeatherReport>? consolidatedWeather;
  String? time;
  String? sunRise;
  String? sunSet;
  String? timezoneName;
  Parent? parent;
  List<Sources>? sources;
  String? title;
  String? locationType;
  int? woeid;
  String? lattLong;
  String? timezone;

  WeatherModel(
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

  WeatherModel.fromJson(Map<String, dynamic> json) {
    if (json['consolidated_weather'] != null) {
      consolidatedWeather = <WeatherReport>[];
      json['consolidated_weather'].forEach((v) {
        consolidatedWeather?.add(WeatherReport.fromJson(v));
      });
    }
    time = json['time'];
    sunRise = json['sun_rise'];
    sunSet = json['sun_set'];
    timezoneName = json['timezone_name'];
    parent = json['parent'] != null ? Parent?.fromJson(json['parent']) : null;
    if (json['sources'] != null) {
      sources = <Sources>[];
      json['sources'].forEach((v) {
        sources?.add(Sources.fromJson(v));
      });
    }
    title = json['title'];
    locationType = json['location_type'];
    woeid = json['woeid'];
    lattLong = json['latt_long'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (consolidatedWeather != null) {
      data['consolidated_weather'] = consolidatedWeather?.map((v) => v.toJson()).toList();
    }
    data['time'] = time;
    data['sun_rise'] = sunRise;
    data['sun_set'] = sunSet;
    data['timezone_name'] = timezoneName;
    if (parent != null) {
      data['parent'] = parent?.toJson();
    }
    if (sources != null) {
      data['sources'] = sources?.map((v) => v.toJson()).toList();
    }
    data['title'] = title;
    data['location_type'] = locationType;
    data['woeid'] = woeid;
    data['latt_long'] = lattLong;
    data['timezone'] = timezone;
    return data;
  }
}

class WeatherReport {
  int? id;
  String? weatherStateName;
  WeatherTypes? weatherTypes;
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
      this.weatherTypes,
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

  WeatherReport.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    weatherStateName = json['weather_state_name'];
    weatherTypes = WeatherExtension.tryParse(json['weather_state_abbr'], ifNull: WeatherTypes.c);
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

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['weather_state_name'] = weatherStateName;
    data['weather_state_abbr'] = weatherTypes?.stringVal;
    data['wind_direction_compass'] = windDirectionCompass;
    data['created'] = created;
    data['applicable_date'] = applicableDate;
    data['min_temp'] = minTemp;
    data['max_temp'] = maxTemp;
    data['the_temp'] = theTemp;
    data['wind_speed'] = windSpeed;
    data['wind_direction'] = windDirection;
    data['air_pressure'] = airPressure;
    data['humidity'] = humidity;
    data['visibility'] = visibility;
    data['predictability'] = predictability;
    return data;
  }
}

class Parent {
  String? title;
  String? locationType;
  int? woeid;
  String? lattLong;

  Parent({this.title, this.locationType, this.woeid, this.lattLong});

  Parent.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    locationType = json['location_type'];
    woeid = json['woeid'];
    lattLong = json['latt_long'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['location_type'] = locationType;
    data['woeid'] = woeid;
    data['latt_long'] = lattLong;
    return data;
  }
}

class Sources {
  String? title;
  String? slug;
  String? url;
  int? crawlRate;

  Sources({this.title, this.slug, this.url, this.crawlRate});

  Sources.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    slug = json['slug'];
    url = json['url'];
    crawlRate = json['crawl_rate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['slug'] = slug;
    data['url'] = url;
    data['crawl_rate'] = crawlRate;
    return data;
  }
}
