import 'package:e_commerece_app/view/screens/category_screen.dart';
import 'package:e_commerece_app/view/screens/favorites_screen.dart';
import 'package:e_commerece_app/view/screens/home_screen.dart';
import 'package:e_commerece_app/view/screens/settings_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Asroo Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
