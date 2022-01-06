import 'package:cloudwatch/app/modules/weather/controllers/weather_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class SettingsController extends GetxController {
  var isCelsius = true.obs;

  @override
  void onInit() {
    GetStorage box = GetStorage();
    isCelsius.value = box.read('tempUnit') ?? true;
    ever(isCelsius, (val) {
      box.write('tempUnit', isCelsius.value);
      Get.find<WeatherController>().updateTemp(isCelsius.value);
    });
    super.onInit();
  }

  void toggleUnit(bool value) {
    isCelsius.value = value;
  }
}
