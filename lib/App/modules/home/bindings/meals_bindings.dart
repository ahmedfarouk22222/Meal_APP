import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:meal_app/App/data/provider/meals_provider.dart';
import 'package:meal_app/App/modules/home/controller/meals_controler.dart';

class MealsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealsProvider>(() => MealsProvider());
    Get.lazyPut<MealsControler>(() => MealsControler());
  }
}
