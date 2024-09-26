import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
      surface: Colors.grey.shade300,  // Background color of surfaces like cards and modals
      primary: Colors.grey.shade500,  // Primary color used for prominent UI elements like AppBar, buttons, etc.
      secondary: Colors.grey.shade200,  // Secondary color for less prominent UI elements
      tertiary: Colors.white,  // Tertiary color used for additional accents or highlights
      inversePrimary: Colors.grey.shade900,  // Inverse primary color, typically used for text or icons on a primary-colored background
    )
);