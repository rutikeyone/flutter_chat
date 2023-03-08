import 'package:flutter_chat/core/error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification.internetConnectionNotification({
    required bool hasInternetConnection,
  }) = _InternetConnectionNotification;
  const factory Notification.signUpNotification({
    required SignUpNotification notification,
  }) = _SignUpNotification;
  const factory Notification.signInNotification({
    required SignInNotification notification,
  }) = _SignInNotification;
  const factory Notification.signInWithGoogleNotification({
    required SignInWithGoogleNotification notification,
  }) = _SignInWithGoogleNotification;
  const factory Notification.signInWithFacebookNotification({
    required SignInWithFacebookNotification notification,
  }) = _SignInWithFacebookNotification;
  const factory Notification.getUserDataNotification({
    required GetUserDataNotification notification,
  }) = _GetUserDataNotification;
}

@freezed
class SignUpNotification with _$SignUpNotification {
  const factory SignUpNotification.success() = _SignUpNotificationSuccess;
  const factory SignUpNotification.failure({
    required SignUpFailure failure,
  }) = _SignUpNotificationFailure;
}

@freezed
class SignInNotification with _$SignInNotification {
  const factory SignInNotification.success() = _SignInNotificationSuccess;
  const factory SignInNotification.failure({
    required SignInFailure failure,
  }) = _SignInNotificationFailure;
}

@freezed
class SignInWithGoogleNotification with _$SignInWithGoogleNotification {
  const factory SignInWithGoogleNotification.success() =
      _SignInWithGoogleSuccess;
  const factory SignInWithGoogleNotification.failure({
    required SignInWithGoogleFailure failure,
  }) = _SignInWithGoogleNotificationFailure;
}

@freezed
class SignInWithFacebookNotification with _$SignInWithFacebookNotification {
  const factory SignInWithFacebookNotification.success() =
      _SignInWithFacebookSuccess;
  const factory SignInWithFacebookNotification.failure({
    required SignInWithFacebookFailure failure,
  }) = _SignInWithFacebookFailure;
}

@freezed
class GetUserDataNotification with _$GetUserDataNotification {
  const factory GetUserDataNotification.failure({
    required GetUserFailure failure,
  }) = _GetUserDataFailure;
  const factory GetUserDataNotification.failureWithGoogle({
    required GetUserWithGoogleFailure failure,
  }) = _GetUserDataWithGoogleFailure;
}
