import 'package:flutter/material.dart';
import 'package:we_connect/themes/dark_mode.dart';
import 'package:we_connect/themes/light_mode.dart';


/// THEME PROVIDER - This helps to change light & dark mode
class ThemeProvider with ChangeNotifier {

  // Set Light Theme by Default
  ThemeData _themeData = lightMode;

  // Get the current theme
  ThemeData get themeData => _themeData;

  // Set the theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Update UI
  } 

  // is Dark Mode currently?
  bool get isDarkMode => _themeData == darkMode;

  // Function for toggling between light & dark mode
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = lightMode;
    } else {
      themeData = darkMode;
    }
  }
}