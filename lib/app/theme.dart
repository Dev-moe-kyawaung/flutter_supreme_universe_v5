import 'package:flutter/material.dart';
import '../core/constants/app_data.dart';

class AppTheme {
  static const lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppData.primaryColor,
      secondary: AppData.secondaryColor,
      surface: Color(0xFFF5F7FA),
    ),
    useMaterial3: true,
    brightness: Brightness.light,
  );

  static const darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppData.primaryColor,
      secondary: AppData.secondaryColor,
      tertiary: AppData.accentColor,
      surface: AppData.darkBackground,
    ),
    useMaterial3: true,
    brightness: Brightness.dark,
  );
}
