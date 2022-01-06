import 'dart:convert';
import 'dart:io';

import 'package:cloudwatch/app/modules/weather/controllers/weather_controller.dart';
import 'package:cloudwatch/services/weather_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart' as g;
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  group('Initialization', () {
    test("Before and after onInit test", () async {
      final file = File('assets/testJson/weatherModel.json');
      final json = jsonDecode(await file.readAsString());
      final mockClient = MockClient((request) async {
        return Response(jsonEncode(json), 200);
      });
      final service = WeatherService(client: mockClient);
      final controller = WeatherController(service: WeatherService(client: mockClient));
      // Build our app and trigger a frame.

      expect(controller.loading.value, true);

      await g.Get.put(controller);

      expect(controller.loading.value, true);
      expect(controller.temp.value, 0);
    });
  });
}
