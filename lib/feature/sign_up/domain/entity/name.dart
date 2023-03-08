import 'package:formz/formz.dart';

enum NameValidationError { empty, invalid }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return NameValidationError.empty;
    }

    if (value.length < 6) {
      return NameValidationError.invalid;
    }

    return null;
  }
}
