import 'dart:convert';

import 'package:cloudwatch/models/meta_weather_model.dart';
import 'package:http/http.dart' as http;

class MetaWeatherService {
  // must get the woeid and pass it into this url to get the weather returned.
  String _path = 'https://www.metaweather.com/api/location/2490383';

  Future<MetaWeatherModel> fetchWeather() async {
    final response = await http.get(Uri.parse(_path));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return MetaWeatherModel.fromServer(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
