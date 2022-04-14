import 'package:e_commerece_app/logic/controller/cart_controller.dart';
import 'package:e_commerece_app/logic/controller/category_controller.dart';
import 'package:e_commerece_app/logic/controller/product_controller.dart';
import 'package:get/instance_manager.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
  }
}
