import 'package:cloudwatch/app/modules/weather/controllers/weather_controller.dart';
import 'package:cloudwatch/app/modules/weather/widgets/weather_data_point.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeatherDataBox extends StatelessWidget {
  WeatherController controller = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white), color: Colors.black45),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeatherDataPoint(
              data: controller.report.value!.humidity.toString(),
              title: "Humidity",
              weather: controller.weather.value!,
            ),
            WeatherDataPoint(
              data: controller.report.value!.windDirection!.toInt().toString(),
              title: "Wind Direction",
              weather: controller.weather.value!,
            ),
            WeatherDataPoint(
              data: controller.report.value!.windSpeed!.round().toString(),
              title: "Wind Speed",
              weather: controller.weather.value!,
            )
          ],
        ),
      ),
    );
  }
}
