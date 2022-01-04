import 'package:cloudwatch/models/meta_weather_model.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  var weatherService;
  late MetaWeatherModel weatherModel;

  Future<WeatherController> initAsync() async {
    // weatherService = MetaWeatherService();
    // weatherModel = await weatherService.fetchWeather();
    return this;
  }
}
