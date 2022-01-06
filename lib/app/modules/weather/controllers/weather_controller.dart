import 'package:cloudwatch/app/modules/weather/weather_types.dart';
import 'package:cloudwatch/services/weather_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../city_model.dart';
import '../weather_model.dart';

class WeatherController extends GetxController {
  //TODO: Implement WeatherController

  var temp = 0.obs;
  var weatherModel = Rxn<WeatherModel>();
  var report = Rxn<WeatherReport>();
  var weather = Rxn<WeatherTypes>();
  var loading = true.obs;
  GetStorage _box = GetStorage();
  WeatherService service;

  WeatherController({required this.service});

  @override
  void onInit() async {
    _getWeather();
    super.onInit();
  }

  Future<void> search(String forCity) async {
    City city = await service.fetchCity(forCity);

    await _getWeather(forCity: city);
  }

  Future<void> _getWeather({City? forCity}) async {
    if (forCity == null) {
      weatherModel.value = await service.fetchWeather("2490383");
    } else {
      weatherModel.value = await service.fetchWeather(forCity.woeid.toString());
    }
    loading.value = false;
    weather.value = weatherModel.value!.consolidatedWeather![0].weatherTypes!;
    report.value = weatherModel.value!.consolidatedWeather![0];
    print(report.value!.maxTemp);
    updateTemp(_box.read('tempUnit') ?? true);
    super.onInit();
  }

  int _toFahrenheit(int temp) {
    return ((temp * 1.8) + 32).toInt();
  }

  void updateTemp(bool isCelsius) {
    temp.value = isCelsius ? report.value!.maxTemp!.toInt() : _toFahrenheit(report.value!.maxTemp!.toInt());
    print(temp.value);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
