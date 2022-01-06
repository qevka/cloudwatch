import 'dart:convert';

import 'package:cloudwatch/app/modules/weather/city_model.dart';
import 'package:cloudwatch/app/modules/weather/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  final http.Client client;

  const WeatherService({required this.client});

  Future<WeatherModel> fetchWeather(String forWoeid) async {
    final response = await client.get(Uri.parse('https://www.metaweather.com/api/location/$forWoeid'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load weather');
    }
  }

  Future<City> fetchCity(String city) async {
    final response = await client.get(Uri.parse('https://www.metaweather.com/api/location/search/?query=$city'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);
      return City.fromJson(jsonDecode(response.body)[0]);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load weather');
    }
  }
}
