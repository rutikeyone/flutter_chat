import 'package:formz/formz.dart';

enum LoginValidationError { empty, invalid }

class Login extends FormzInput<String, LoginValidationError> {
  const Login.pure() : super.pure('');
  const Login.dirty([String value = '']) : super.dirty(value);

  @override
  LoginValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return LoginValidationError.empty;
    }

    if (value.length < 6) {
      return LoginValidationError.invalid;
    }

    return null;
  }
}
