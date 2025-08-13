import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:meal_app/App/data/services/local_storage_service.dart';

class ChangeLang extends StatelessWidget {
  const ChangeLang({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'langBtn',
      onPressed: () {
        String newLocale = AppSettings.locale == 'en' ? 'ar' : 'en';
        AppSettings.saveLocale(newLocale);
        Get.updateLocale(Locale(newLocale));
      },
      child: const Icon(Icons.language),
    );
  }
}
