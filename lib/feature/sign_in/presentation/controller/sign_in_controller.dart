import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notification.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notifier_controller.dart';
import 'package:flutter_chat/feature/sign_in/domain/entity/password.dart';
import 'package:flutter_chat/feature/sign_in/domain/use_case/sign_in_with_email_and_password_use_case.dart';
import 'package:flutter_chat/feature/sign_in/domain/use_case/sign_in_with_facebook_use_case.dart';
import 'package:flutter_chat/feature/sign_in/domain/use_case/sign_in_with_google_use_case.dart';
import 'package:flutter_chat/feature/sign_in/presentation/controller/sign_in_state.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/email.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

import 'sign_in_process_status.dart';

class SignInController extends StateNotifier<SignInState> {
  final NotifierController _notifierController;
  final SignInWithEmailAndPasswordUseCase _signInEmailAndPasswordUseCase;
  final SignInWithGoogleUseCase _signInWithGoogleUseCase;
  final SignInWithFacebookUseCase _signInWithFacebookUseCase;

  final Function _successSignInCallback;
  final Function _successSingInWithGoogleCallback;
  final Function _successSignInWithFacebookCallback;

  SignInController({
    required NotifierController notifierController,
    required SignInWithEmailAndPasswordUseCase signInEmailAndPasswordUseCase,
    required SignInWithGoogleUseCase signInWithGoogleUseCase,
    required SignInWithFacebookUseCase signInWithFacebookUseCase,
    required Function successSignInCallback,
    required Function successSingInWithGoogleCallback,
    required Function successSignInWithFacebookCallback,
  })  : _successSingInWithGoogleCallback = successSingInWithGoogleCallback,
        _successSignInCallback = successSignInCallback,
        _signInWithGoogleUseCase = signInWithGoogleUseCase,
        _signInWithFacebookUseCase = signInWithFacebookUseCase,
        _signInEmailAndPasswordUseCase = signInEmailAndPasswordUseCase,
        _successSignInWithFacebookCallback = successSignInWithFacebookCallback,
        _notifierController = notifierController,
        super(const SignInState());

  void changeEmail(String value) {
    final email = Email.dirty(value);
    final status = Formz.validate([email, state.password]);
    state = state.copyWith(email: email, status: status);
  }

  void changePassword(String value) {
    final password = Password.dirty(value);
    final status = Formz.validate([state.email, password]);
    state = state.copyWith(password: password, status: status);
  }

  Future<void> signIn() async {
    if (state.canLogIn) {
      state =
          state.copyWith(processStatus: const SignInProcessStatus.inProgress());
      final singInResult = await _signInEmailAndPasswordUseCase.call(
          EmailAndPasswordParams(
              email: state.email.value, password: state.password.value));
      singInResult.fold(
        (l) {
          state = state.copyWith(
              processStatus: const SignInProcessStatus.failure());
          _notifierController.addNotification(Notification.signInNotification(
              notification: SignInNotification.failure(failure: l)));
        },
        (r) {
          state = state.copyWith(
              processStatus: const SignInProcessStatus.success());
          _notifierController.addNotification(
              const Notification.signInNotification(
                  notification: SignInNotification.success()));
          _successSignInCallback();
        },
      );
    }
  }

  Future<void> signInWithGoogle() async {
    final googleSignInCredentialResult =
        await _signInWithGoogleUseCase.call(NoParams());
    googleSignInCredentialResult?.fold(
      (l) {
        state =
            state.copyWith(processStatus: const SignInProcessStatus.failure());
        _notifierController.addNotification(
            Notification.signInWithGoogleNotification(
                notification:
                    SignInWithGoogleNotification.failure(failure: l)));
      },
      (r) {
        if (r) {
          state = state.copyWith(
              processStatus: const SignInProcessStatus.success());
          _notifierController.addNotification(
              const Notification.signInNotification(
                  notification: SignInNotification.success()));
          _successSingInWithGoogleCallback();
        }
      },
    );
  }

  Future<void> signInWithFacebook() async {
    final facebookSignInResult =
        await _signInWithFacebookUseCase.call(NoParams());
    facebookSignInResult.fold(
      (l) {
        state =
            state.copyWith(processStatus: const SignInProcessStatus.failure());
        _notifierController.addNotification(
            Notification.signInWithFacebookNotification(
                notification:
                    SignInWithFacebookNotification.failure(failure: l)));
      },
      (r) {
        if (r) {
          state = state.copyWith(
              processStatus: const SignInProcessStatus.success());
          _notifierController.addNotification(
              const Notification.signInNotification(
                  notification: SignInNotification.success()));
          _successSignInWithFacebookCallback();
        }
      },
    );
  }
}
