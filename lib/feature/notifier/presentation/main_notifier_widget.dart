import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/utils/easy_snackbar.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notification.dart'
    as notification;
import 'package:flutter_chat/feature/notifier/presentation/controller/notifier_controller.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainNotifierWidget extends ConsumerStatefulWidget {
  final Widget child;

  const MainNotifierWidget({Key? key, required this.child}) : super(key: key);

  @override
  ConsumerState<MainNotifierWidget> createState() => _MainNotifierWidgetState();
}

class _MainNotifierWidgetState extends ConsumerState<MainNotifierWidget> {
  late final NotifierController _notificationController;
  late final StreamSubscription<notification.Notification>
      _notificationSubscription;

  @override
  void initState() {
    _notificationController = ref.read(notifierControllerProvider);
    _notificationSubscription = _notificationController.notificationStream
        .listen(_listenNotificationController);
    super.initState();
  }

  void _listenNotificationController(notification.Notification event) {
    event.whenOrNull(
      signUpNotification: _signUpNotify,
      signInNotification: _signInNotify,
      signInWithGoogleNotification: _signInWithGoogleNotify,
      signInWithFacebookNotification: _signInWithFacebookNotify,
      getUserDataNotification: _getUserDataNotify,
    );
  }

  void _signUpNotify(notification.SignUpNotification notification) {
    notification.when(
        success: _signUpSuccessNotify, failure: _signUpFailureNotify);
  }

  void _getUserDataNotify(notification.GetUserDataNotification notification) {
    notification.when(
        failure: _getUserDataFailureNotify,
        failureWithGoogle: _getUserDataWithGoogleFailureNotify);
  }

  @override
  void dispose() {
    _notificationSubscription.cancel();
    _notificationController.dispose();
    super.dispose();
  }

  void _signUpSuccessNotify() {
    EasySnackBar.of(context: context)
        .showSuccessSnackBar(label: S.of(context).success_registration);
  }

  void _signUpFailureNotify(SignUpFailure failure) {
    failure.when(
        unknown: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(label: S.of(context).unknown_error),
        emailAlreadyInUse: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(label: S.of(context).the_user_already_exists),
        invalidEmail: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(label: S.of(context).incorrect_email),
        operationNotAllowed: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(
                label: S.of(context).the_operation_is_not_allowed),
        weakPassword: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(label: S.of(context).weak_password),
        uploadAvatar: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(label: S.of(context).upload_avatar_failure),
        addUserData: () => EasySnackBar.of(context: context)
            .showFailureSnackbar(label: S.of(context).add_user_data_failure));
  }

  void _signInNotify(notification.SignInNotification notification) {
    notification.whenOrNull(
      success: _signInSuccess,
      failure: _signInFailure,
    );
  }

  void _signInWithGoogleNotify(
      notification.SignInWithGoogleNotification notification) {
    notification.whenOrNull(failure: _signInWithGoogleFailure);
  }

  void _signInWithFacebookNotify(
      notification.SignInWithFacebookNotification notification) {
    notification.whenOrNull(failure: _signInWithFacebookFailure);
  }

  void _signInWithGoogleFailure(SignInWithGoogleFailure failure) {
    EasySnackBar.of(context: context)
        .showFailureSnackbar(label: S.of(context).sign_in_with_google_failure);
  }

  void _signInWithFacebookFailure(SignInWithFacebookFailure failure) {
    EasySnackBar.of(context: context)
        .showFailureSnackbar(label: S.of(context).signInWithGoogleFailure);
  }

  void _signInFailure(SignInFailure failure) {
    failure.when(
      unknown: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).unknown_error),
      invalidEmail: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).invalid_email),
      userDisabled: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).user_disabled),
      userNotFound: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).user_not_found),
      wrongPassword: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).wrong_password),
    );
  }

  void _getUserDataFailureNotify(GetUserFailure failure) {
    failure.when(
      notData: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).user_not_found),
      unknown: () => EasySnackBar.of(context: context)
          .showFailureSnackbar(label: S.of(context).unknown_error),
    );
  }

  void _getUserDataWithGoogleFailureNotify(_) {
    EasySnackBar.of(context: context).showFailureSnackbar(
        label: S.of(context).get_user_data_with_google_failure);
  }

  void _signInSuccess() {
    EasySnackBar.of(context: context)
        .showSuccessSnackBar(label: S.of(context).successful_authorization);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
