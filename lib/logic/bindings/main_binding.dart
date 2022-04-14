import 'package:e_commerece_app/logic/controller/main_controller.dart';
import 'package:e_commerece_app/logic/controller/payment_controller.dart';
import 'package:e_commerece_app/logic/controller/settings_controller.dart';
import 'package:get/instance_manager.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
    Get.put(PayMentController(), permanent: true);
  }
}
