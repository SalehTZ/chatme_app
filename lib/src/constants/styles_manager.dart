import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'fonts_manager.dart';

class TextStyles {
  static TextStyle _getTextStyle(
    double fontSize,
    String fontFamily,
    FontWeight fontWeight,
    Color color,
    double height,
    List<Shadow> shadows,
  ) =>
      TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: color,
          height: height,
          shadows: shadows);

  // * Regular Style
  static TextStyle getRegularStyle({
    double fontSize = FontSize.s12,
    required Color color,
    double height = FontHeight.h1,
    List<Shadow>? shadows,
  }) =>
      _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeightManager.regular,
        color,
        height,
        shadows ?? [],
      );

  // * Subtitle Style
  static TextStyle getSubtitleStyle({
    double fontSize = FontSize.s12,
    Color color = ColorManager.textColor,
    double height = FontHeight.h1,
    List<Shadow>? shadows,
  }) =>
      _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeightManager.semiBold,
        color,
        height,
        shadows ?? [],
      );

  // * Semi Bold Text Style
  static TextStyle getSemiBoldStyle({
    double fontSize = FontSize.s12,
    Color color = ColorManager.textColor,
    double height = FontHeight.h1_2,
    List<Shadow>? shadows,
  }) =>
      _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeightManager.semiBold,
        color,
        height,
        shadows ?? [],
      );

  // * Bold Text Style
  static TextStyle getBoldStyle({
    double fontSize = FontSize.s16,
    Color color = ColorManager.textColor,
    double height = FontHeight.h1_4,
    List<Shadow>? shadows,
  }) =>
      _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeightManager.bold,
        color,
        height,
        shadows ?? [],
      );

  // * Super Bold Text Style
  static TextStyle getSuperBoldStyle({
    double fontSize = FontSize.s16,
    Color color = ColorManager.textColor,
    double height = FontHeight.h1_4,
    List<Shadow>? shadows,
  }) =>
      _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeightManager.superBold,
        color,
        height,
        shadows ?? [],
      );
}

// * Custom Box Shadow Class
class CustomBoxShadow extends BoxShadow {
  const CustomBoxShadow({
    super.offset = const Offset(1, 1),
    super.blurRadius = 0.7,
  }) : super(
          color: Colors.black26,
        );
}

// * Hard Drop Shadow Class
class HardDropShadow extends BoxShadow {
  const HardDropShadow({
    super.offset = const Offset(0, 1),
    super.blurRadius = 1,
  }) : super(
          color: ColorManager.hardDropShadowColor,
        );
}

// * Negative Drop Shadow Class
class NegativeDropShadow extends BoxShadow {
  const NegativeDropShadow({
    super.offset = const Offset(0, -4),
    super.blurRadius = 8,
  }) : super(
          color: ColorManager.softDropShadowColor,
        );
}
