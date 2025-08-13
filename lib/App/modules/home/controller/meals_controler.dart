import 'dart:developer';

import 'package:get/get.dart';
import 'package:meal_app/App/data/model/meals.dart';
import 'package:meal_app/App/data/provider/meals_provider.dart';

class MealsControler extends GetxController {
  var isLoading = false;
  List<Meals> meals = [];
  MealsProvider mealsProvider = Get.find<MealsProvider>();

  @override
  void onInit() {
    super.onInit();
    getMeals();
  }

  Future<void> getMeals() async {
    isLoading = true;
    update();
    try {
      meals = await mealsProvider.getmeals();
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading = false;
      update();
    }
  }
}
