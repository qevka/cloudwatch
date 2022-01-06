import 'dart:convert';
import 'dart:io';

import 'package:cloudwatch/app/modules/weather/city_model.dart';
import 'package:cloudwatch/app/modules/weather/weather_model.dart';
import 'package:cloudwatch/services/weather_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('Weather Service', () {
    test('status == 200 and WeatherModel serialization', () async {
      final file = File('assets/testJson/weatherModel.json');
      final json = jsonDecode(await file.readAsString());
      final mockClient = MockClient((request) async {
        return Response(jsonEncode(json), 200);
      });
      final service = WeatherService(client: mockClient);
      final expectedResponse = WeatherModel.fromJson(json);
      final actualResponse = await service.fetchWeather("forWoeid");
      expect(actualResponse.toString(), equals(expectedResponse.toString()));
    });

    test('status == 200 and City serialization', () async {
      final file = File('assets/testJson/city.json');
      final json = jsonDecode(await file.readAsString());
      final mockClient = MockClient((request) async {
        return Response(jsonEncode(json), 200);
      });
      final service = WeatherService(client: mockClient);
      final expectedResponse = City.fromJson(json[0]);
      final actualResponse = await service.fetchCity("test");
      expect(actualResponse.toString(), equals(expectedResponse.toString()));
    });

    test('status != 200', () async {
      final file = File('assets/testJson/city.json');
      final json = jsonDecode(await file.readAsString());
      final mockClient = MockClient((request) async {
        return Response(jsonEncode(json), 500);
      });
      final service = WeatherService(client: mockClient);
      expect(() async => await service.fetchCity("test"), throwsException);
    });

    test('status != 200', () async {
      final file = File('assets/testJson/weatherModel.json');
      final json = jsonDecode(await file.readAsString());
      final mockClient = MockClient((request) async {
        return Response(jsonEncode(json), 500);
      });
      final service = WeatherService(client: mockClient);
      expect(() async => await service.fetchCity("test"), throwsException);
    });
  });
}
