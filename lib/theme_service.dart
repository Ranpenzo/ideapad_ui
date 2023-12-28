import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {


  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  
  void switchTheme(bool isOn) {

    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
  
    notifyListeners();

  }
}
