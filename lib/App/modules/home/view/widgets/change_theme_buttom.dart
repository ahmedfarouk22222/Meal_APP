import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/App/core/values/app_colors.dart';
import 'package:meal_app/App/data/services/local_storage_service.dart';

class ChangeThemeButtom extends StatelessWidget {
  const ChangeThemeButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: IconButton(
        onPressed: () {
          ThemeMode newMode = AppSettings.themeMode == ThemeMode.light
              ? ThemeMode.dark
              : ThemeMode.light;

          AppSettings.saveTheme(newMode);
          Get.changeThemeMode(newMode);
        },
        color: kPrimaryColor,
        icon: Icon(Icons.dark_mode),
      ),
    );
  }
}
