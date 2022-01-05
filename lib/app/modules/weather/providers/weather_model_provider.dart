import 'package:get/get.dart';

import '../weather_model_model.dart';

class WeatherModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return WeatherModel.fromJson(map);
      if (map is List) return map.map((item) => WeatherModel.fromServer(item)).toList();
    };
    httpClient.baseUrl = 'https://www.metaweather.com/api/location/2490383';
  }

  Future<WeatherModel?> getWeatherModel(int id) async {
    final response = await get('weathermodel/$id');
    return response.body;
  }
}
