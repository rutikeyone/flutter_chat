import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/email.dart';
import 'package:flutter_chat/generated/l10n.dart';

extension EmailExt on Email {
  String? validateError(BuildContext context) {
    if (invalid) {
      if (error == EmailValidationError.empty) {
        return S.of(context).no_value;
      } else if (error == EmailValidationError.invalid) {
        return S.of(context).incorrect_email;
      }
    }
    return null;
  }
}
