import 'package:cloudwatch/app/modules/settings/widgets/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
        ),
        body: Obx(() {
          return Column(
            children: [
              Setting(
                onChanged: controller.toggleUnit,
                initialValue: controller.isCelsius.value,
                title: controller.isCelsius.value ? "Celsius" : "Fahrenheit",
              )
            ],
          );
        }));
  }
}
