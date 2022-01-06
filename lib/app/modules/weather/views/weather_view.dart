import 'package:cloudwatch/app/modules/weather/weather_types.dart';
import 'package:cloudwatch/app/modules/weather/widgets/search_field.dart';
import 'package:cloudwatch/app/modules/weather/widgets/weather_data_box.dart';
import 'package:cloudwatch/app/modules/weather/widgets/weather_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/weather_controller.dart';

class WeatherView extends GetView<WeatherController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() => buildView(controller)));
  }
}

Widget buildView(WeatherController controller) {
  var loading = controller.loading.value;
  TextEditingController editControl = TextEditingController();
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(gradient: loading ? WeatherTypes.c.gradient : controller.weather.value!.gradient),
      ),
      loading ? WeatherTypes.c.animation : controller.weather.value!.animation,
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SearchField(),
                  loading ? const Center(child: CircularProgressIndicator()) : WeatherHeader(),
                ],
              ),
              loading ? Container() : WeatherDataBox(),
            ],
          ),
        ),
      ),
    ],
  );
}
