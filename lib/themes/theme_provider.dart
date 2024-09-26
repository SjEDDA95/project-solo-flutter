import 'package:flutter/material.dart';
import 'package:twitter_x_clone/themes/dark_mode.dart';
import 'package:twitter_x_clone/themes/light_mode.dart';

/*

THEME PROVIDER

Cela nous aide pour changer l'application du light mode au dark mode..

Comment faire donc ?


Additionnel : on ajoute le flutter pub add provider

 */

class ThemeProvider with ChangeNotifier {
  // Initialement, on le met à lightmode
  ThemeData _themeData = lightMode;
  // Get le theme actuel
  ThemeData get themeData => _themeData;
  // Est-ce que c'est le dark mode actuellement ?
  bool get isDarkMode => _themeData == darkMode;
  // Set le theme voulu
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // Update l'UI
    notifyListeners();
  }

  // On toggle entre les modes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
    notifyListeners();
  }
}
