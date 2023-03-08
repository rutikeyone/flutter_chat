import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final EdgeInsets padding;
  final ValueChanged<String> onValueChanged;
  final String hintText;
  final String? errorText;
  final TextInputAction? textInputAction;
  final bool obscureText;

  const InputWidget({
    Key? key,
    required this.padding,
    required this.hintText,
    required this.onValueChanged,
    this.errorText,
    this.textInputAction,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          errorText: errorText,
        ),
        onChanged: onValueChanged,
        textInputAction: textInputAction,
        obscureText: obscureText,
      ),
    );
  }
}
