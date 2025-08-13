import 'package:get/get.dart';
import 'package:meal_app/App/data/model/meals.dart';


class MealsSearchController extends GetxController {
  List<Meals> meals = [];
  List<Meals> filteredMeals = [];

  bool isLoading = false;
  @override
  void onInit() {
    super.onInit();
        getMeals();

  }

  Future<void> getMeals() async {
    isLoading = true;
    update();
    meals = Get.arguments;
    filteredMeals = meals;
    isLoading = false;
    update();
  }

  void searchMeals(String query) {
    if (query.isEmpty) {
      filteredMeals = meals;
    } else {
      filteredMeals = meals
          .where(
            (meal) => meal.name.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }
    update();
  }
}
