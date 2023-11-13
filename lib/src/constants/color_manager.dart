import 'package:flutter/material.dart';

class ColorManager {
  static const int _primaryColorValue = 0xff2A75BC;
  static const int _accentColorValue = 0xff2A75BC;
  static const int _backgroundColorValue = 0xff1C1B1B;
  static const int _textColorValue = 0xff1C1B1B;
  static const int _textColorWhiteValue = 0xffffffff;

  // * Colors
  static const Color primaryColor = Color(_primaryColorValue);
  static const Color accentColor = Color(_accentColorValue);
  static const Color backgroundColor = Color(_backgroundColorValue);
  static const Color textColor = Color(_textColorValue);
  static const Color textColorWhite = Color(_textColorWhiteValue);

  // * Shadow Colors
  static const Color hardDropShadowColor = Color(0x26000000);
  static const Color softDropShadowColor = Color(0x0A000000);

  // * Material Colors
  static MaterialColor primarySwatch = toMaterialColor(primaryColor);

  // * Helper Function
  static MaterialColor toMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
