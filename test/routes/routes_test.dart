import 'package:cloudwatch/app/routes/app_pages.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "test routes",
    () {
      expect('/weather', Routes.WEATHER);
      expect('/settings', Routes.SETTINGS);
    },
  );
}
