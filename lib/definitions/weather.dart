import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:particles_flutter/particles_flutter.dart';

enum WeatherTypes { snow, sleet, hail, thunder, heavyRain, lightRain, Showers, heavyClouds, lightClouds, clear }

extension WeatherAnimationExtention on WeatherTypes {
  Widget get animation {
    switch (this) {
      case WeatherTypes.hail:
        return _sleet;
      case WeatherTypes.sleet:
        return _sleet;
      case WeatherTypes.snow:
        return _snow;
      case WeatherTypes.heavyRain:
        return _heavyRain;
      case WeatherTypes.lightRain:
        return _ligthRain;
      case WeatherTypes.Showers:
        return _mediumRain;
      default:
        return Container();
    }
  }

  LinearGradient get gradient {
    switch (this) {
      case WeatherTypes.hail:
        return const LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightGreen, Colors.green]);
      case WeatherTypes.sleet:
        return const LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightGreen, Colors.green]);
      case WeatherTypes.snow:
        return LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightBlueAccent, Colors.blue.shade900]);
      case WeatherTypes.heavyRain:
        return LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightBlueAccent, Colors.blue.shade900]);
      case WeatherTypes.clear:
        return LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.amber.shade300, Colors.amber.shade900]);
      default:
        return LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.lightBlueAccent, Colors.blue.shade900]);
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
}

class WeatherAnimation {}
