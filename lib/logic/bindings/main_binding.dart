import 'package:flutter_uni_app/logic/controllers/main_controller.dart';
import 'package:flutter_uni_app/logic/controllers/setting_controller.dart';
import 'package:get/get.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(Maincontroller());
    Get.put(SettingController());
  }
}
