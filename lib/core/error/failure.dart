import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

abstract class Failure {}

@freezed
class SignUpFailure extends Failure with _$SignUpFailure {
  const factory SignUpFailure.unknown() = _SignUpUnknownFailure;
  const factory SignUpFailure.emailAlreadyInUse() =
      _SignUpEmailAlreadyInUseFailure;
  const factory SignUpFailure.invalidEmail() = _SignUpInvalidEmailFailure;
  const factory SignUpFailure.operationNotAllowed() =
      _SignUpOperationNotAllowedFailure;
  const factory SignUpFailure.weakPassword() = _SignUpWeekPasswordFailure;
  const factory SignUpFailure.uploadAvatar() = _SignUpUploadAvatarFailure;
  const factory SignUpFailure.addUserData() = _SignUpAddUserDataFailure;
}

class SignOutFailure extends Failure {}

@freezed
class SignInFailure extends Failure with _$SignInFailure {
  const factory SignInFailure.unknown() = _SignInUnknownFailure;
  const factory SignInFailure.invalidEmail() = _SignInInvalidEmailFailure;
  const factory SignInFailure.userDisabled() = _SignInUserDisabledFailure;
  const factory SignInFailure.userNotFound() = _SignInUserNotFoundFailure;
  const factory SignInFailure.wrongPassword() = _SignInWrongPasswordFailure;
}

class SignInWithGoogleFailure extends Failure {}

class SignInWithFacebookFailure extends Failure {}

class UploadAvatarFailure extends Failure {}

class AddUserDataFailure extends Failure {}

@freezed
class DeleteUserFailure extends Failure with _$DeleteUserFailure {
  const factory DeleteUserFailure.unknown() = _DeleteUserUnknownFailure;
  const factory DeleteUserFailure.requiresRecentLogin() =
      _DeleteUserRequiresRecentLoginFailure;
}

@freezed
class GetUserFailure extends Failure with _$GetUserFailure {
  const factory GetUserFailure.notData() = _GetUserNotDataFailure;
  const factory GetUserFailure.unknown() = _GetUserUnknownFailure;
}

class GetUserWithGoogleFailure extends Failure {}

class GetUserWithFacebookFailure extends Failure {}

class SetAuthenticationStatusFailure extends Failure {}

class GetAuthenticationStatusFailure extends Failure {}

class ClearAuthenticationStatusFailure extends Failure {}
