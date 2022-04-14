import 'package:e_commerece_app/utils/my_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  var swithchValue = false.obs;
  var storage = GetStorage();
  String? langLocal = ene;

  String capitalize(String profileName) {
    return profileName.split(" ").map((name) => name.capitalize).join(" ");
  }

  //Language

  @override
  void onInit() async {
    super.onInit();
    if (langLocal != null) {
      langLocal = (await getLanguage); // Safe
    }
  }

  void saveLanguage(String lang) async {
    await storage.write("lang", lang);
  }

  get getLanguage async {
    return await storage.read("lang");
  }

  void changeLanguage(String typeLang) {
    saveLanguage(typeLang);
    if (langLocal == typeLang) {
      return;
    }

    if (typeLang == frf) {
      langLocal = frf;
      saveLanguage(frf);
    } else if (typeLang == ara) {
      langLocal = ara;
      saveLanguage(ara);
    } else {
      langLocal = ene;
      saveLanguage(ene);
    }
    update();
  }
}
