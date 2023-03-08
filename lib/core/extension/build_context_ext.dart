import 'package:flutter/material.dart';
import 'package:flutter_chat/core/theme/custom_color.dart';
import 'package:flutter_chat/core/theme/custom_text_style.dart';

extension BuildContextExt on BuildContext {
  double get fullWidth => MediaQuery.of(this).size.width;
  double get fullHeight => MediaQuery.of(this).size.height;
  CustomColor get customColors => Theme.of(this).extension<CustomColor>()!;
  CustomTextStyle get customTextStyles =>
      Theme.of(this).extension<CustomTextStyle>()!;
}
