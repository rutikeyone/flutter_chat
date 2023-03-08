import 'package:flutter/material.dart';
import 'package:flutter_chat/core/theme/custom_color.dart';
import 'package:flutter_chat/core/theme/custom_text_style.dart';

class CustomTheme {
  static CustomColor get lightColor => CustomColor.lightColor;
  static CustomColor get darkColor => CustomColor.darkColor;

  static CustomTextStyle get lightTextStyle =>
      CustomTextStyle.lightCustomTextTheme;
  static CustomTextStyle get darkTextStyle =>
      CustomTextStyle.darkCustomTextTheme;

  static final darkTheme = ThemeData.dark().copyWith(
    extensions: [lightColor, lightTextStyle],
  );

  static final lightTheme = ThemeData.light().copyWith(extensions: [
    darkColor,
    darkTextStyle,
  ]);
}
