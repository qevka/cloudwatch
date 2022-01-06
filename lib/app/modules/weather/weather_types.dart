import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_bg.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
import 'package:get/get.dart';
import 'package:parallax_rain/parallax_rain.dart';

enum WeatherTypes { sn, sl, h, t, hr, lr, s, hc, lc, c }

extension WeatherExtension on WeatherTypes {
  Widget get animation {
    switch (this) {
      case WeatherTypes.hc:
        return WeatherBg(
          weatherType: WeatherType.overcast,
          width: Get.width,
          height: Get.height,
        );
      case WeatherTypes.lc:
        var beforeDark = DateTime.now().hour < 18;
        return WeatherBg(
          weatherType: beforeDark ? WeatherType.cloudy : WeatherType.cloudyNight,
          width: Get.width,
          height: Get.height,
        );
      case WeatherTypes.t:
        return WeatherBg(
          weatherType: WeatherType.thunder,
          width: Get.width,
          height: Get.height,
        );
      case WeatherTypes.h:
        return _sleet;
      case WeatherTypes.sl:
        return _sleet;
      case WeatherTypes.sn:
        return WeatherBg(
          weatherType: WeatherType.heavySnow,
          width: Get.width,
          height: Get.height,
        );
      case WeatherTypes.hr:
        return WeatherBg(
          weatherType: WeatherType.heavyRainy,
          width: Get.width,
          height: Get.height,
        );
      case WeatherTypes.lr:
        return WeatherBg(
          weatherType: WeatherType.lightRainy,
          width: Get.width,
          height: Get.height,
        );
      case WeatherTypes.s:
        return WeatherBg(
          weatherType: WeatherType.lightRainy,
          width: Get.width,
          height: Get.height,
        );
      default:
        return WeatherBg(
          weatherType: WeatherType.sunny,
          width: Get.width,
          height: Get.height,
        );
    }
  }

  String get stringVal {
    return toString().split(".").last;
  }

  LinearGradient get gradient {
    switch (this) {
      default:
        return LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.blue.shade900, Colors.lightBlueAccent]);
    }
  }

  Color get textColors {
    switch (this) {
      default:
        return Colors.white;
    }
  }

  static final _sleet = Container(
    height: Get.height,
    width: Get.width,
    child: ParallaxRain(
        trail: true,
        numberOfDrops: 600,
        numberOfLayers: 5,
        dropWidth: 1.5,
        dropHeight: 1.5,
        dropFallSpeed: 2,
        dropColors: [
          Colors.white60,
        ]),
  );

  static WeatherTypes tryParse(dynamic str, {required WeatherTypes ifNull}) {
    try {
      return WeatherTypes.values.firstWhere((e) => e.toString() == 'WeatherTypes.' + str);
    } catch (ex) {
      return ifNull;
    }
  }
}
