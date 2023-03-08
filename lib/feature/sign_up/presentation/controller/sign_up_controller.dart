import 'dart:io';

import 'package:flutter_chat/core/error/failure.dart';
import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notification.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notifier_controller.dart';
import 'package:flutter_chat/feature/sign_in/domain/entity/login.dart';
import 'package:flutter_chat/feature/sign_in/domain/entity/password.dart';
import 'package:flutter_chat/feature/sign_up/data/model/user_model.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/email.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/last_name.dart';
import 'package:flutter_chat/feature/sign_up/domain/entity/name.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_add_user_data_use_case.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_create_user_with_email_and_password_use_case.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_delete_user_use_case.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_upload_avatar_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_controller.freezed.dart';
part 'sign_up_state.dart';

class SignUpController extends StateNotifier<SignUpState> {
  final NotifierController notifierController;
  final Function() successSignUpCallback;

  final FirebaseCreateUserWithEmailAndPasswordUseCase
      createUserWithEmailAndPasswordUseCase;
  final FirebaseUploadAvatarUseCase firebaseUploadAvatarUseCase;
  final FirebaseAddUserDataUseCase firebaseAddUserDataUseCase;
  final FirebaseDeleteUserUseCase firebaseDeleteUserUseCase;

  SignUpController({
    required this.createUserWithEmailAndPasswordUseCase,
    required this.notifierController,
    required this.firebaseUploadAvatarUseCase,
    required this.firebaseAddUserDataUseCase,
    required this.successSignUpCallback,
    required this.firebaseDeleteUserUseCase,
  }) : super(const SignUpState());

  void changeName(String value) {
    final name = Name.dirty(value);
    final status = Formz.validate(
        [name, state.lastName, state.email, state.login, state.password]);
    state = state.copyWith(name: name, status: status);
  }

  void changeLastName(String value) {
    final lastName = LastName.dirty(value);
    final status = Formz.validate(
        [state.name, lastName, state.email, state.login, state.password]);
    state = state.copyWith(lastName: lastName, status: status);
  }

  void changeEmail(String value) {
    final email = Email.dirty(value);
    final status = Formz.validate(
        [state.name, state.lastName, email, state.login, state.password]);
    state = state.copyWith(email: email, status: status);
  }

  void changeLogin(String value) {
    final login = Login.dirty(value);
    final status = Formz.validate(
        [state.name, state.lastName, state.email, login, state.password]);
    state = state.copyWith(login: login, status: status);
  }

  void changePassword(String value) {
    final password = Password.dirty(value);
    final status = Formz.validate(
        [state.name, state.lastName, state.email, state.login, password]);
    state = state.copyWith(password: password, status: status);
  }

  Future<void> signUp() async {
    if (state.status.isValidated) {
      state = state.copyWith(
          registrationProcessState: const SignUpProcessState.loading());

      final registrationResult = await createUserWithEmailAndPasswordUseCase
          .call(EmailAndPasswordParams(
              email: state.email.value, password: state.password.value));
      await registrationResult.fold(
        (l) async {
          state = state.copyWith(
              registrationProcessState: const SignUpProcessState.failure());
          notifierController.addNotification(Notification.signUpNotification(
              notification: SignUpNotification.failure(failure: l)));
        },
        (r) async {
          late final String? photoUrl;
          if (state.photoFile != null) {
            final userId = r.user!.uid;
            final imageList = state.photoFile!.readAsBytesSync();
            final uploadImageResult = await firebaseUploadAvatarUseCase.call(
                UploadAvatarParams(
                    childName: "profilePics", file: imageList, uid: userId));
            uploadImageResult.fold(
              (l) {
                notifierController.addNotification(
                    const Notification.signUpNotification(
                        notification: SignUpNotification.failure(
                            failure: SignUpFailure.uploadAvatar())));
                photoUrl = null;
              },
              (r) {
                photoUrl = r;
              },
            );
          } else {
            photoUrl = null;
          }

          final userModel = UserModel(
              photoUrl: photoUrl,
              name: state.name.value,
              lastName: state.lastName.value,
              email: state.email.value,
              login: state.login.value,
              password: state.password.value);

          final addUserDataResult = await firebaseAddUserDataUseCase
              .call(AddUserDataParams(userModel, r.user!.uid));
          await addUserDataResult.fold(
            (_) async {
              await firebaseDeleteUserUseCase.call(NoParams());
              notifierController.addNotification(
                  const Notification.signUpNotification(
                      notification: SignUpNotification.failure(
                          failure: SignUpFailure.addUserData())));
            },
            (_) async {
              state = state.copyWith(
                  registrationProcessState: const SignUpProcessState.success());
              notifierController.addNotification(
                  const Notification.signUpNotification(
                      notification: SignUpNotification.success()));
              successSignUpCallback();
            },
          );
        },
      );
    }
  }

  void changeUserPhoto(String photoPath) {
    final file = File(photoPath);
    state = state.copyWith(photoFile: file);
  }
}
