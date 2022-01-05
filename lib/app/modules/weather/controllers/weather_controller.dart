import 'package:cloudwatch/Screens/weather/weather_types.dart';
import 'package:cloudwatch/app/modules/weather/providers/weather_model_provider.dart';
import 'package:get/get.dart';

import '../weather_model_model.dart';

class WeatherController extends GetxController {
  //TODO: Implement WeatherController

  var weatherService;
  late WeatherModel weatherModel;
  late WeatherReport report;
  late WeatherTypes weather;

  @override
  void onInit() async {
    weatherService = WeatherModel();
    weatherModel = (await WeatherModelProvider.getWeatherModel())!;
    weather = weatherModel.weatherReports![0].weather!;
    report = weatherModel.weatherReports![0];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
