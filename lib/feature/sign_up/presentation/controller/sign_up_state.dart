part of 'sign_up_controller.dart';

@freezed
class SignUpState with _$SignUpState {
  bool get isCanRegistration =>
      status.isValidated &&
      registrationProcessState.maybeMap(
          loading: (_) => false, orElse: () => true);

  const SignUpState._();

  const factory SignUpState({
    @Default(null) File? photoFile,
    @Default(Name.pure()) Name name,
    @Default(LastName.pure()) LastName lastName,
    @Default(Email.pure()) Email email,
    @Default(Login.pure()) Login login,
    @Default(Password.pure()) Password password,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(SignUpProcessState.pure())
        SignUpProcessState registrationProcessState,
  }) = _SignUpState;
}

@freezed
class SignUpProcessState with _$SignUpProcessState {
  const factory SignUpProcessState.pure() = _SignUpProcessPure;
  const factory SignUpProcessState.loading() = _SignUpProcessLoading;
  const factory SignUpProcessState.success() = _SignUpProcessSuccess;
  const factory SignUpProcessState.failure() = _SignUpProcessFailure;
}
