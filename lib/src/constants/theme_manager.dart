import 'package:flutter/material.dart';

import 'color_manager.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: ColorManager.primaryColor,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
      primarySwatch: ColorManager.primarySwatch,
      accentColor: ColorManager.accentColor,
      backgroundColor: ColorManager.backgroundColor,
    ),
  );
}
