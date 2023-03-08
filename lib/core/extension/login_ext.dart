import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/sign_in/domain/entity/login.dart';
import 'package:flutter_chat/generated/l10n.dart';

extension LoginExt on Login {
  String? validateError(BuildContext context) {
    if (invalid) {
      if (error == LoginValidationError.empty) {
        return S.of(context).no_value;
      } else if (error == LoginValidationError.invalid) {
        return S.of(context).small_field_error;
      }
    }

    return null;
  }
}
