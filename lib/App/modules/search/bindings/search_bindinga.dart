
import 'package:get/get.dart';
import 'package:meal_app/App/modules/search/controller/search_controller.dart';

class SearchBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<MealsSearchController>(MealsSearchController());
  }
} 