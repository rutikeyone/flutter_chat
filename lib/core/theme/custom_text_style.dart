import 'package:flutter/material.dart';
import 'package:flutter_chat/core/theme/custom_color.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle> {
  static final CustomTextStyle lightCustomTextTheme = CustomTextStyle(
    titleHeaderModalBottomSheetStyle1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      color: CustomColor.lightColor.titleModalBottomSheetColor1,
    ),
    titleHeaderModalBottomSheetStyle2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: CustomColor.lightColor.titleModalBottomSheetColor2,
    ),
  );

  static final CustomTextStyle darkCustomTextTheme = CustomTextStyle(
    titleHeaderModalBottomSheetStyle1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      color: CustomColor.lightColor.titleModalBottomSheetColor1,
    ),
    titleHeaderModalBottomSheetStyle2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: CustomColor.lightColor.titleModalBottomSheetColor2,
    ),
  );

  final TextStyle titleHeaderModalBottomSheetStyle1;
  final TextStyle titleHeaderModalBottomSheetStyle2;

  const CustomTextStyle({
    required this.titleHeaderModalBottomSheetStyle1,
    required this.titleHeaderModalBottomSheetStyle2,
  });

  @override
  ThemeExtension<CustomTextStyle> copyWith({
    TextStyle? titleHeaderModalBottomSheetStyle1,
    TextStyle? titleHeaderModalBottomSheetStyle2,
  }) {
    return CustomTextStyle(
        titleHeaderModalBottomSheetStyle1: titleHeaderModalBottomSheetStyle1 ??
            this.titleHeaderModalBottomSheetStyle1,
        titleHeaderModalBottomSheetStyle2: titleHeaderModalBottomSheetStyle2 ??
            this.titleHeaderModalBottomSheetStyle2);
  }

  @override
  ThemeExtension<CustomTextStyle> lerp(
      ThemeExtension<CustomTextStyle>? other, double t) {
    if (other is! CustomTextStyle) {
      return this;
    }
    return CustomTextStyle(
      titleHeaderModalBottomSheetStyle1: TextStyle.lerp(
          titleHeaderModalBottomSheetStyle1,
          other.titleHeaderModalBottomSheetStyle1,
          t)!,
      titleHeaderModalBottomSheetStyle2: TextStyle.lerp(
          titleHeaderModalBottomSheetStyle2,
          other.titleHeaderModalBottomSheetStyle2,
          t)!,
    );
  }
}
