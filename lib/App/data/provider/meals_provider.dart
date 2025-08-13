import 'package:meal_app/App/core/values/constant.dart';
import 'package:meal_app/App/data/model/meals.dart';
import 'package:meal_app/App/data/provider/app_provider.dart';

class MealsProvider extends AppProvider {
  Future<List<Meals>> getmeals() async {
    final response = await handleNetworkError(get(kBaseurl));

    if (response.status.hasError) {
      throw Exception("Failed to load meals");
    }

    final data = response.body['meals'];
    if (data == null) {
      return [];
    }

    return (data as List).map((mealJson) => Meals.fromjson(mealJson)).toList();
  }
}
