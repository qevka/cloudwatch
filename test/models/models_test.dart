import 'dart:convert';
import 'dart:io';

import 'package:cloudwatch/app/modules/weather/city_model.dart';
import 'package:cloudwatch/app/modules/weather/weather_model.dart';
import 'package:cloudwatch/app/modules/weather/weather_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Serializers", () {
    final weatherData = File('assets/testJson/weatherModel.json');
    final cityData = File('assets/testJson/city.json');

    test("city", () async {
      final cityJson = jsonDecode(await cityData.readAsString());
      var city = City.fromJson(cityJson[0]);
      var cityJsonResult = city.toJson();
      expect(cityJson[0], cityJsonResult);
    });

    test("weatherModel", () async {
      final weatherModelJson = jsonDecode(await weatherData.readAsString());
      final weatherModel = WeatherModel.fromJson(weatherModelJson);
      final resultJson = weatherModel.toJson();
      expect(resultJson, weatherModelJson);
    });

    test("WeatherTypes Parsing", () {
      var types = ["sn", "sl", "h", "t", "hr", "lr", "s", "hc", "lc", "c"];
      for (var type in types) {
        var newType = WeatherExtension.tryParse(type, ifNull: WeatherTypes.c);
        expect(newType.stringVal, type);
      }
    });
  });
}
