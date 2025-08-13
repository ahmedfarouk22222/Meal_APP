import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/App/core/values/app_colors.dart';
import 'package:meal_app/App/core/values/localization/app_trans.dart';
import 'package:meal_app/App/data/services/local_storage_service.dart';
import 'package:meal_app/App/routes/app_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettings.loadSettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (GetMaterialApp(
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF121212), // لون الخلفية في الدارك
        brightness: Brightness.dark,
      ),

      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor, // لون الخلفية في اللايت
        brightness: Brightness.light,
      ),

      themeMode: AppSettings.themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPage.initial,
      getPages: AppPage.routes,
      translations: AppTransliation(),
      locale: Locale(AppSettings.locale),
    ));
  }
}
