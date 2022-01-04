import 'package:cloudwatch/Screens/weather/weather_controller.dart';
import 'package:get/get.dart';

class WeatherBinding extends Bindings {
  @override
  void dependencies() {
    Get.putAsync(() => WeatherController().initAsync());
  }
}
