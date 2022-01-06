import 'package:cloudwatch/app/modules/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends GetView<SettingsController> {
  Function(bool) onChanged;
  bool initialValue;
  String title;

  Setting({required this.onChanged, required this.initialValue, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          SizedBox(
            width: 50,
          ),
          Switch(value: initialValue, onChanged: onChanged)
        ],
      ),
    );
  }
}
