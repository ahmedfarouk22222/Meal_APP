import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:meal_app/App/modules/splash/controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GetBuilder<SplashController>(
        builder: (controller) => FadeTransition(
          opacity: controller.fadeAnimation,
          child: Center(
            child: Image.asset(
              'assets/images/logoo.png',
              height: 200,
              width: 400,
            ),
          ),
        ),
      ),
    );
  }
}
