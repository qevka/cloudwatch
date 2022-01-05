import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:particles_flutter/particles_flutter.dart';

enum WeatherTypes { sn, sl, h, t, hr, lr, s, hc, lc, c }

extension WeatherExtension on WeatherTypes {
  Widget get animation {
    switch (this) {
      case WeatherTypes.h:
        return _sleet;
      case WeatherTypes.sl:
        return _sleet;
      case WeatherTypes.sn:
        return _snow;
      case WeatherTypes.hr:
        return _heavyRain;
      case WeatherTypes.lr:
        return _ligthRain;
      case WeatherTypes.s:
        return _mediumRain;
      default:
        return Container();
    }
  }

  LinearGradient get gradient {
    switch (this) {
      case WeatherTypes.h:
        return const LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightGreen, Colors.green]);
      case WeatherTypes.sl:
        return const LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightGreen, Colors.green]);
      case WeatherTypes.c:
        return LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          Colors.lightBlueAccent,
          Colors.lightBlueAccent,
          Colors.lightBlueAccent,
          Colors.lightBlueAccent,
          Colors.lightBlueAccent,
          Colors.green.shade200,
          Colors.amber.shade100
        ]);
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

  // These are animations to be shown for different weather conditions.
  static final _snow = CircularParticle(
    onTapAnimation: false,
    key: UniqueKey(),
    awayRadius: 50,
    numberOfParticles: 1000,
    speedOfParticles: 3,
    height: Get.height,
    width: Get.width,
    particleColor: Colors.white.withAlpha(150),
    awayAnimationDuration: Duration(milliseconds: 600),
    maxParticleSize: 7,
    isRandSize: true,
    isRandomColor: false,
    awayAnimationCurve: Curves.bounceInOut,
    enableHover: false,
    hoverColor: Colors.white,
    hoverRadius: 0,
    connectDots: false, //not recommended
  );

  static final _heavyRain = Container(
    height: Get.height,
    width: Get.width,
    child: ParallaxRain(
      dropFallSpeed: 4,
      dropColors: [Colors.blue, Colors.blueGrey, Colors.lightBlue],
    ),
  );

  static final _mediumRain = Container(
    height: Get.height,
    width: Get.width,
    child: ParallaxRain(
      numberOfDrops: 400,
      numberOfLayers: 5,
      dropHeight: 3,
      dropFallSpeed: 3,
      dropColors: [Colors.blue, Colors.lightBlueAccent],
    ),
  );

  static final _ligthRain = Container(
    height: Get.height,
    width: Get.width,
    child: ParallaxRain(
      numberOfDrops: 200,
      numberOfLayers: 5,
      dropHeight: 3,
      dropFallSpeed: 2.5,
      dropColors: [Colors.blue, Colors.lightBlueAccent],
    ),
  );

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

  static WeatherTypes tryParse(dynamic index, {required WeatherTypes ifNull}) {
    try {
      return WeatherTypes.values[index];
    } catch (ex) {
      return ifNull;
    }
  }
}
