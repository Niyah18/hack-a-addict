import 'package:flutter/material.dart';
import 'package:trial/themes/light_mode.dart';
import 'package:trial/themes/dark_mode.dart';

class ThemeProvider with ChangeNotifier {
  // Default theme is light mode
  ThemeData _themeData = lightMode;

  // Getter for themeData
  ThemeData get themeData => _themeData;

  // Getter to check if the current theme is dark
  bool get isDarkMode => _themeData == darkMode;

  // Setter to change the themeData
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Notify listeners when the theme changes
  }

  // Method to toggle between light and dark modes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
