import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:meal_app/App/routes/app_routes.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void onInit() {
    super.onInit();

    startSplash();
  }

  void startSplash() async {
    animationController = AnimationController(
      vsync: this,

      animationBehavior: AnimationBehavior.normal,
      duration: Duration(seconds: 1),
    );

    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);

    animationController.forward();
    await Future.delayed(Duration(seconds: 3));
    Get.offAllNamed(AppRoutes.home);
  }
}
