import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/sign_in/domain/entity/password.dart';
import 'package:flutter_chat/generated/l10n.dart';

extension PasswordExt on Password {
  String? validateError(BuildContext context) {
    if (invalid) {
      if (error == PasswordValidationError.empty) {
        return S.of(context).no_value;
      } else if (error == PasswordValidationError.invalid) {
        return S.of(context).small_field_error;
      }
    }

    return null;
  }
}
