import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  // add data in provider
  String appLanguage = "en";

  void changeLanguage(newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
}