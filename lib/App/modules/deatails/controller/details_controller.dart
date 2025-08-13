import 'package:get/get.dart';
import 'package:meal_app/App/data/model/meals.dart';

class DetailsController extends GetxController {
  late final Meals meals;
  @override
  void onInit() {
    super.onInit();
    meals = Get.arguments as Meals;
  }
}
