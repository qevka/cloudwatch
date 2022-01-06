import 'package:cloudwatch/app/modules/settings/controllers/settings_controller.dart';
import 'package:cloudwatch/services/weather_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../controllers/weather_controller.dart';

class WeatherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WeatherController>(() {
      // This is passed in so that the client can be mocked and mock data can be sent into the controller.
      var client = Client();
      return WeatherController(service: WeatherService(client: client));
    });
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
