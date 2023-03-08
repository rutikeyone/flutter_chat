import 'package:flutter_chat/feature/sign_in/domain/entity/password.dart';
import 'package:flutter_chat/feature/sign_in/presentation/controller/sign_in_process_status.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/email.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  bool get canLogIn =>
      status.isValidated &&
      processStatus.maybeMap(
          inProgress: (_) => false, success: (_) => false, orElse: () => true);

  const SignInState._();

  const factory SignInState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(SignInProcessStatus.none()) SignInProcessStatus processStatus,
  }) = _SignInStatus;
}
