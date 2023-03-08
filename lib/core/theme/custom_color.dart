import 'package:flutter/material.dart';

class CustomColor extends ThemeExtension<CustomColor> {
  final Color iconColor1;
  final Color iconColor2;
  final Color modalBottomSheet1;
  final Color titleModalBottomSheetColor1;
  final Color titleModalBottomSheetColor2;
  final Color snackBarBackgroundColor1;
  final Color selectedItemColor1;
  final Color unselectedItemColor1;

  static const lightColor = CustomColor(
    iconColor1: Color(0xff01A9FB),
    iconColor2: Colors.white,
    modalBottomSheet1: Colors.white,
    titleModalBottomSheetColor1: Color(0xff87878C),
    titleModalBottomSheetColor2: Color(0xff3E99FD),
    snackBarBackgroundColor1: Color(0xFF7348FF),
    selectedItemColor1: Colors.blue,
    unselectedItemColor1: Colors.grey,
  );

  static const darkColor = CustomColor(
    iconColor1: Color(0xff01A9FB),
    iconColor2: Colors.white,
    modalBottomSheet1: Colors.white,
    titleModalBottomSheetColor1: Color(0xff87878C),
    titleModalBottomSheetColor2: Color(0xff3E99FD),
    snackBarBackgroundColor1: Color(0xFF7348FF),
    selectedItemColor1: Colors.blue,
    unselectedItemColor1: Colors.grey,
  );

  const CustomColor({
    required this.iconColor1,
    required this.iconColor2,
    required this.modalBottomSheet1,
    required this.titleModalBottomSheetColor1,
    required this.titleModalBottomSheetColor2,
    required this.snackBarBackgroundColor1,
    required this.selectedItemColor1,
    required this.unselectedItemColor1,
  });

  @override
  ThemeExtension<CustomColor> copyWith({
    Color? iconColor1,
    Color? iconColor2,
    Color? modalBottomSheet1,
    Color? titleModalBottomSheetColor1,
    Color? titleModalBottomSheetColor2,
    Color? snackBarBackgroundColor1,
    Color? selectedItemColor1,
    Color? unselectedItemColor1,
  }) {
    return CustomColor(
      iconColor1: iconColor1 ?? this.iconColor1,
      iconColor2: iconColor2 ?? this.iconColor2,
      modalBottomSheet1: modalBottomSheet1 ?? this.modalBottomSheet1,
      titleModalBottomSheetColor1:
          titleModalBottomSheetColor1 ?? this.titleModalBottomSheetColor1,
      titleModalBottomSheetColor2:
          titleModalBottomSheetColor2 ?? this.titleModalBottomSheetColor2,
      snackBarBackgroundColor1:
          snackBarBackgroundColor1 ?? this.snackBarBackgroundColor1,
      selectedItemColor1: selectedItemColor1 ?? this.selectedItemColor1,
      unselectedItemColor1: unselectedItemColor1 ?? this.unselectedItemColor1,
    );
  }

  @override
  ThemeExtension<CustomColor> lerp(
      ThemeExtension<CustomColor>? other, double t) {
    if (other is! CustomColor) {
      return this;
    }

    return CustomColor(
      iconColor1: Color.lerp(iconColor1, other.iconColor1, t)!,
      iconColor2: Color.lerp(iconColor2, other.iconColor2, t)!,
      modalBottomSheet1:
          Color.lerp(modalBottomSheet1, other.modalBottomSheet1, t)!,
      titleModalBottomSheetColor1: Color.lerp(
          titleModalBottomSheetColor1, other.titleModalBottomSheetColor1, t)!,
      titleModalBottomSheetColor2: Color.lerp(
          titleModalBottomSheetColor2, other.titleModalBottomSheetColor2, t)!,
      snackBarBackgroundColor1: Color.lerp(
          snackBarBackgroundColor1, other.snackBarBackgroundColor1, t)!,
      selectedItemColor1:
          Color.lerp(selectedItemColor1, other.selectedItemColor1, t)!,
      unselectedItemColor1:
          Color.lerp(unselectedItemColor1, other.unselectedItemColor1, t)!,
    );
  }
}
