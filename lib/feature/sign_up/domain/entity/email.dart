import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

const regexPatter =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

class Email extends FormzInput<String, EmailValidationError> {
  const Email.dirty([String value = '']) : super.dirty(value);
  const Email.pure() : super.pure('');

  static final _regex = RegExp(regexPatter);

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) {
      return EmailValidationError.empty;
    } else if (!_regex.hasMatch(value)) {
      return EmailValidationError.invalid;
    }

    return null;
  }
}
