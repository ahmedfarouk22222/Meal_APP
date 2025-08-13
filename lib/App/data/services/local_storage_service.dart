import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSettings {
  static final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static ThemeMode themeMode = ThemeMode.light;
  static String locale = 'en';

   
  static Future<void> loadSettings() async {
    
    String? savedTheme = await _storage.read(key: 'theme');
    themeMode = (savedTheme == 'dark') ? ThemeMode.dark : ThemeMode.light;

     
    String? savedLocale = await _storage.read(key: 'locale');
    locale = savedLocale ?? 'en';
  }

  static Future<void> saveTheme(ThemeMode mode) async {
    themeMode = mode;
    await _storage.write(
      key: 'theme',
      value: mode == ThemeMode.dark ? 'dark' : 'light',
    );
  }

  
  static Future<void> saveLocale(String langCode) async {
    locale = langCode;
    await _storage.write(key: 'locale', value: langCode);
  }
}
