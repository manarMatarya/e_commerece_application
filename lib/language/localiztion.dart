import 'package:e_commerece_app/language/ar.dart';
import 'package:e_commerece_app/language/en.dart';
import 'package:e_commerece_app/language/fr.dart';
import 'package:e_commerece_app/utils/my_string.dart';
import 'package:get/route_manager.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
