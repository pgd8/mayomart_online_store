import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode appMode = ThemeMode.light;

  void changeLanguage() {
    if (languageCode == "en") {
      languageCode = "ar";
    } else {
      languageCode = "en";
    }
    notifyListeners();
  }

  void changeAppMode() {
    if (appMode == ThemeMode.light) {
      appMode = ThemeMode.dark;
    } else {
      appMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
