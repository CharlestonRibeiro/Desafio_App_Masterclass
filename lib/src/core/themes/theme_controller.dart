import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  bool _isDarkTheme = true;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  ThemeMode get currentTheme {
    ThemeMode mode;
    _isDarkTheme == true ? mode = ThemeMode.dark : mode = ThemeMode.light;
    notifyListeners();
    return mode;
  }
}
