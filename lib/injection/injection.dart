import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_chat/core/network/network_info.dart';
import 'package:flutter_chat/feature/authentication/controller/authentication_controller.dart';
import 'package:flutter_chat/feature/authentication/controller/state/authentication_state.dart';
import 'package:flutter_chat/feature/authentication/controller/state/authorization_event.dart';
import 'package:flutter_chat/feature/authentication/data/data_source/authentication_data_source.dart';
import 'package:flutter_chat/feature/authentication/data/repository/authentication_repository_impl.dart';
import 'package:flutter_chat/feature/local_storage/data/data_source/local_storage_data_source.dart';
import 'package:flutter_chat/feature/local_storage/data/repository/local_storage_repository_impl.dart';
import 'package:flutter_chat/feature/local_storage/domain/use_case/local_storage_clear_authentication_status_use_case.dart';
import 'package:flutter_chat/feature/local_storage/domain/use_case/local_storage_get_authentication_status_use_case.dart';
import 'package:flutter_chat/feature/local_storage/domain/use_case/local_storage_set_authentication_status_use_case.dart';
import 'package:flutter_chat/feature/navigation/home/controller/home_controller.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_controller.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_state.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notifier_controller.dart';
import 'package:flutter_chat/feature/sign_in/data/data_source/sign_in_data_source.dart';
import 'package:flutter_chat/feature/sign_in/data/repository/sign_in_repository_impl.dart';
import 'package:flutter_chat/feature/sign_in/domain/use_case/sign_in_with_email_and_password_use_case.dart';
import 'package:flutter_chat/feature/sign_in/domain/use_case/sign_in_with_facebook_use_case.dart';
import 'package:flutter_chat/feature/sign_in/domain/use_case/sign_in_with_google_use_case.dart';
import 'package:flutter_chat/feature/sign_in/presentation/controller/sign_in_controller.dart';
import 'package:flutter_chat/feature/sign_in/presentation/controller/sign_in_state.dart';
import 'package:flutter_chat/feature/sign_up/data/datasource/firebase_sign_up_data_source.dart';
import 'package:flutter_chat/feature/sign_up/data/repository/firebase_sign_up_repository_impl.dart';
import 'package:flutter_chat/feature/sign_up/domain/repository/firebase_sign_up_repository.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_add_user_data_use_case.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_create_user_with_email_and_password_use_case.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_delete_user_use_case.dart';
import 'package:flutter_chat/feature/sign_up/domain/use_case/firebase_upload_avatar_use_case.dart';
import 'package:flutter_chat/feature/sign_up/presentation/controller/sign_up_controller.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Other dependencies

final connectivityProvider = Provider<Connectivity>((_) => Connectivity());

final networkInfoProvider = Provider<NetworkInfo>(
    (ref) => NetworkInfoImpl(ref.read(connectivityProvider)));

final facebookAuthProvider =
    Provider<FacebookAuth>((_) => FacebookAuth.instance);

final googleSignInProvider = Provider<GoogleSignIn>((_) => GoogleSignIn());

final sharedPreferenceProvider =
    FutureProvider<SharedPreferences>((_) => SharedPreferences.getInstance());

//Firebase Instance dependencies

final firebaseFireStoreProvider =
    Provider<FirebaseFirestore>((_) => FirebaseFirestore.instance);

final firebaseAuthProvider =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

final firebaseStorageProvider =
    Provider<FirebaseStorage>((_) => FirebaseStorage.instance);

//Data Source dependencies

final firebaseAuthDataSourceProvider = Provider<FirebaseSignUpDataSource>(
    (ref) => FirebaseSignUpDataSourceImpl(
        ref.read(firebaseAuthProvider),
        ref.read(firebaseStorageProvider),
        ref.read(firebaseFireStoreProvider)));

final authenticationDataSourceProvider = Provider((ref) =>
    AuthenticationDataSourceImpl(
        firebaseAuth: ref.read(firebaseAuthProvider),
        firebaseFireStore: ref.read(firebaseFireStoreProvider),
        facebookAuth: ref.read(facebookAuthProvider)));

final signInDataSourceProvider = Provider((ref) => SignInDateSourceImpl(
      firebaseAuth: ref.read(firebaseAuthProvider),
      googleSignIn: ref.read(googleSignInProvider),
      oAuthCreater: GoogleAuthProvider.credential,
      facebookAuth: ref.read(facebookAuthProvider),
    ));

final firebaseSignUpDataSourceProvider = Provider((ref) =>
    FirebaseSignUpDataSourceImpl(
        ref.read(firebaseAuthProvider),
        ref.read(firebaseStorageProvider),
        ref.read(firebaseFireStoreProvider)));

final localStorageDataSourceProvider =
    Provider((ref) => LocalStorageDataSourceImpl(ref: ref));

//Repository dependencies

final firebaseAuthRepositoryProvider = Provider<FirebaseSignUpRepository>(
    (ref) =>
        FirebaseSignUpRepositoryImpl(ref.read(firebaseAuthDataSourceProvider)));

final authenticationRepositoryProvider = Provider((ref) =>
    AuthenticationRepositoryImpl(ref.read(authenticationDataSourceProvider)));

final signInRepositoryProvider =
    Provider((ref) => SignInRepositoryImpl(ref.read(signInDataSourceProvider)));

final firebaseSignUpRepositoryProvider = Provider((ref) =>
    FirebaseSignUpRepositoryImpl(ref.read(firebaseSignUpDataSourceProvider)));

final localStorageRepositoryProvider = Provider((ref) =>
    LocalStorageRepositoryImpl(ref.read(localStorageDataSourceProvider)));

//Use case dependencies

final createUserWithEmailAndPasswordUseCaseProvider =
    Provider<FirebaseCreateUserWithEmailAndPasswordUseCase>((ref) =>
        FirebaseCreateUserWithEmailAndPasswordUseCase(
            ref.read(firebaseAuthRepositoryProvider)));

final signInWithEmailAndPasswordUseCaseProvider = Provider((ref) =>
    SignInWithEmailAndPasswordUseCase(ref.read(signInRepositoryProvider)));

final signInWithGoogleUseCaseProvider = Provider(
    (ref) => SignInWithGoogleUseCase(ref.read(signInRepositoryProvider)));

final firebaseUploadAvatarUseCaseProvider = Provider((ref) =>
    FirebaseUploadAvatarUseCase(ref.read(firebaseSignUpRepositoryProvider)));

final firebaseAddUserDataUseCaseProvider = Provider((ref) =>
    FirebaseAddUserDataUseCase(ref.read(firebaseSignUpRepositoryProvider)));

final firebaseDeleteUserUseCaseProvider = Provider((ref) =>
    FirebaseDeleteUserUseCase(ref.read(firebaseSignUpRepositoryProvider)));

final localStorageCleanAuthenticationStatusUseCase = Provider((ref) =>
    LocalStorageClearAuthenticationStatusUseCase(
        ref.read(localStorageRepositoryProvider)));

final localStorageSetAuthenticationStatusUseCase = Provider((ref) =>
    LocalStorageSetAuthenticationStatusUseCase(
        ref.read(localStorageRepositoryProvider)));

final localStorageGetAuthenticationStatusUseCase = Provider((ref) =>
    LocalStorageGetAuthenticationStatusUseCase(
        ref.read(localStorageRepositoryProvider)));

final signInWithFacebookUseCaseProvider = Provider(
    (ref) => SignInWithFacebookUseCase(ref.read(signInRepositoryProvider)));

//Controller dependencies

final mainNavigatorControllerProvider =
    StateNotifierProvider<MainNavigatorController, MainNavigatorScreenState>(
        (ref) {
  final authenticationController =
      ref.watch(authenticationControllerProvider.notifier);

  return MainNavigatorController(
      ref.read(networkInfoProvider), authenticationController)
    ..initialize();
});

final signInControllerProvider = StateNotifierProvider
    .autoDispose<SignInController, SignInState>((ref) => SignInController(
        signInEmailAndPasswordUseCase:
            ref.read(signInWithEmailAndPasswordUseCaseProvider),
        notifierController: ref.read(notifierControllerProvider),
        signInWithGoogleUseCase: ref.read(signInWithGoogleUseCaseProvider),
        signInWithFacebookUseCase: ref.read(signInWithFacebookUseCaseProvider),
        successSingInWithGoogleCallback: () => ref
            .read(authenticationControllerProvider.notifier)
            .addAuthorizationEvent(const AuthorizationEvent.signInWithGoogle()),
        successSignInCallback: () => ref
            .read(authenticationControllerProvider.notifier)
            .addAuthorizationEvent(const AuthorizationEvent.signIn()),
        successSignInWithFacebookCallback: () => ref
            .read(authenticationControllerProvider.notifier)
            .addAuthorizationEvent(
                const AuthorizationEvent.signInWithFacebook())));

final registrationControllerProvider =
    StateNotifierProvider.autoDispose<SignUpController, SignUpState>(
  (ref) => SignUpController(
      firebaseUploadAvatarUseCase:
          ref.read(firebaseUploadAvatarUseCaseProvider),
      createUserWithEmailAndPasswordUseCase:
          ref.read(createUserWithEmailAndPasswordUseCaseProvider),
      notifierController: ref.read(notifierControllerProvider),
      firebaseAddUserDataUseCase: ref.read(firebaseAddUserDataUseCaseProvider),
      successSignUpCallback: () => ref
          .read(authenticationControllerProvider.notifier)
          .addAuthorizationEvent(const AuthorizationEvent.signUp()),
      firebaseDeleteUserUseCase: ref.read(firebaseDeleteUserUseCaseProvider)),
);

final notifierControllerProvider = Provider((_) => NotifierController());

final authenticationControllerProvider = StateNotifierProvider<
        AuthenticationController, AuthenticationState>(
    (ref) => AuthenticationController(
          authenticationRepository: ref.read(authenticationRepositoryProvider),
          notifierController: ref.read(notifierControllerProvider),
          localStorageClearAuthenticationStatusUseCase:
              ref.read(localStorageCleanAuthenticationStatusUseCase),
          localStorageGetAuthenticationStatusUseCase:
              ref.read(localStorageGetAuthenticationStatusUseCase),
          localStorageSetAuthenticationStatusUseCase:
              ref.read(localStorageSetAuthenticationStatusUseCase),
        )..addAuthorizationEvent(const AuthorizationEvent.initialization()));

final homeControllerProvider =
    StateNotifierProvider.autoDispose<HomeController, int>((ref) =>
        HomeController(
            mainNavigatorController:
                ref.read(mainNavigatorControllerProvider.notifier)));
