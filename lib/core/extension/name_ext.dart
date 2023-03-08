import 'package:flutter/material.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/name.dart';
import 'package:flutter_chat/generated/l10n.dart';

extension NameExt on Name {
  String? validateError(BuildContext context) {
    if (invalid) {
      if (error == NameValidationError.empty) {
        return S.of(context).no_value;
      } else if (error == NameValidationError.invalid) {
        return S.of(context).small_field_error;
      }
    }

    return null;
  }
}
