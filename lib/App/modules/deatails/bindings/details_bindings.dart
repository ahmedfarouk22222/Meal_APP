import 'package:get/get.dart';
import 'package:meal_app/App/modules/deatails/controller/details_controller.dart';

class DetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(()=>DetailsController());
  }
}
