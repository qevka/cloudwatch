import 'package:cloudwatch/app/modules/weather/controllers/weather_controller.dart';
import 'package:cloudwatch/app/modules/weather/weather_types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherHeader extends StatelessWidget {
  WeatherController controller = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.weatherModel.value!.title!.toUpperCase(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: controller.weather.value!.textColors),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return Text(
                controller.temp.toString() + "°",
                style: GoogleFonts.spartan(
                    textStyle:
                        TextStyle(fontSize: 165, fontWeight: FontWeight.w400, color: controller.weather.value!.textColors)),
              );
            })
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: RotatedBox(
            child: Text(
              controller.report.value!.weatherStateName!,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: controller.weather.value!.textColors),
            ),
            quarterTurns: 3,
          ),
        ),
      ],
    );
  }
}
