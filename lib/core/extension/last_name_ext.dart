import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/last_name.dart';
import 'package:flutter_chat/generated/l10n.dart';

extension LastNameExt on LastName {
  String? validateError(BuildContext context) {
    if (invalid) {
      if (error == LastNameValidationError.empty) {
        return S.of(context).no_value;
      } else if (error == LastNameValidationError.invalid) {
        return S.of(context).small_field_error;
      }
    }

    return null;
  }
}
