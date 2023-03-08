import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_process_status.freezed.dart';

@freezed
class SignInProcessStatus with _$SignInProcessStatus {
  const factory SignInProcessStatus.none() = _SignInProcessNone;
  const factory SignInProcessStatus.inProgress() = _SignInInProgress;
  const factory SignInProcessStatus.success() = _SignInSuccess;
  const factory SignInProcessStatus.failure() = _SignInFailure;
}
