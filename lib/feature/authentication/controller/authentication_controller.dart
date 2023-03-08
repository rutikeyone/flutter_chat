import 'dart:async';

import 'package:flutter_chat/core/use_case/use_param.dart';
import 'package:flutter_chat/feature/authentication/controller/state/authentication_state.dart';
import 'package:flutter_chat/feature/authentication/controller/state/authorization_event.dart';
import 'package:flutter_chat/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:flutter_chat/feature/local_storage/data/model/authentication_status.dart';
import 'package:flutter_chat/feature/local_storage/domain/use_case/local_storage_clear_authentication_status_use_case.dart';
import 'package:flutter_chat/feature/local_storage/domain/use_case/local_storage_get_authentication_status_use_case.dart';
import 'package:flutter_chat/feature/local_storage/domain/use_case/local_storage_set_authentication_status_use_case.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notification.dart';
import 'package:flutter_chat/feature/notifier/presentation/controller/notifier_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationController extends StateNotifier<AuthenticationState> {
  final StreamController<AuthorizationEvent> _authorizationStreamController;
  final AuthenticationRepository _authenticationRepository;

  final LocalStorageClearAuthenticationStatusUseCase
      _localStorageClearAuthenticationStatusUseCase;
  final LocalStorageGetAuthenticationStatusUseCase
      _localStorageGetAuthenticationStatusUseCase;
  final LocalStorageSetAuthenticationStatusUseCase
      _localStorageSetAuthenticationStatusUseCase;

  final NotifierController _notifierController;

  AuthenticationController({
    required AuthenticationRepository authenticationRepository,
    required NotifierController notifierController,
    required LocalStorageSetAuthenticationStatusUseCase
        localStorageSetAuthenticationStatusUseCase,
    required LocalStorageGetAuthenticationStatusUseCase
        localStorageGetAuthenticationStatusUseCase,
    required LocalStorageClearAuthenticationStatusUseCase
        localStorageClearAuthenticationStatusUseCase,
  })  : _localStorageSetAuthenticationStatusUseCase =
            localStorageSetAuthenticationStatusUseCase,
        _localStorageGetAuthenticationStatusUseCase =
            localStorageGetAuthenticationStatusUseCase,
        _localStorageClearAuthenticationStatusUseCase =
            localStorageClearAuthenticationStatusUseCase,
        _authenticationRepository = authenticationRepository,
        _notifierController = notifierController,
        _authorizationStreamController = StreamController<AuthorizationEvent>(),
        super(const AuthenticationState.unknown());

  Future<void> _getAuthorizationState() async {
    final firebaseUser = _authenticationRepository.user;
    if (firebaseUser != null) {
      final getUserDataResult =
          await _authenticationRepository.getUserData(firebaseUser.uid);
      await getUserDataResult.fold(
        (l) async {
          _notifierController.addNotification(
              Notification.getUserDataNotification(
                  notification: GetUserDataNotification.failure(failure: l)));
          state = const AuthenticationState.unAuthenticated();
          await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
        },
        (r) async {
          await _localStorageSetAuthenticationStatusUseCase.call(
              AuthenticationStatusParams(
                  const AuthenticationStatus.emailAndPassword()));
          state = AuthenticationState.authenticated(user: r);
        },
      );
    } else {
      state = const AuthenticationState.unAuthenticated();
      await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
    }
  }

  Future<void> _getAuthorizationStateWithGoogle() async {
    final userResult = await _authenticationRepository.getUserDataWithGoogle();
    await userResult.fold(
      (l) async {
        _notifierController.addNotification(
            Notification.getUserDataNotification(
                notification:
                    GetUserDataNotification.failureWithGoogle(failure: l)));
        state = const AuthenticationState.unAuthenticated();
        await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
      },
      (r) async {
        if (r != null) {
          await _localStorageSetAuthenticationStatusUseCase.call(
              AuthenticationStatusParams(const AuthenticationStatus.google()));
          state = AuthenticationState.authenticatedWithGoogle(user: r);
        }
      },
    );
  }

  Future<void> _getAuthorizationStateWithFacebook() async {
    final userResult = await _authenticationRepository.getUserWithFacebook();
    await userResult.fold(
      (l) async {
        state = const AuthenticationState.unAuthenticated();
        await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
      },
      (r) async {
        await _localStorageSetAuthenticationStatusUseCase.call(
            AuthenticationStatusParams(const AuthenticationStatus.facebook()));
        state = AuthenticationState.authenticatedWithGoogle(user: r);
      },
    );
  }

  Future<void> _onCheckingAuthenticationState() async {
    final authenticationStatusResult =
        await _localStorageGetAuthenticationStatusUseCase.call(NoParams());

    await authenticationStatusResult.fold(
      (_) async {
        state = const AuthenticationState.unAuthenticated();
        await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
      },
      (r) async {
        if (r != null) {
          await r.when(
            emailAndPassword: () {
              _getAuthorizationState();
            },
            google: () async {
              _getAuthorizationStateWithGoogle();
            },
            facebook: () async {
              _getAuthorizationStateWithFacebook();
            },
          );
        } else {
          state = const AuthenticationState.unAuthenticated();
        }
      },
    );
  }

  void addAuthorizationEvent(AuthorizationEvent event) {
    event.mapOrNull(
      initialization: (_) => _onCheckingAuthenticationState(),
      signIn: (_) => _getAuthorizationState(),
      signInWithGoogle: (event) => _getAuthorizationStateWithGoogle(),
      signInWithFacebook: (_) => _getAuthorizationStateWithFacebook(),
    );
  }

  Future<void> signOut() async {
    await state.whenOrNull(authenticated: (_) async {
      await _authenticationRepository.signOut();
      await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
    }, authenticatedWithGoogle: (_) async {
      await _authenticationRepository.signOut();
      await _localStorageClearAuthenticationStatusUseCase.call(NoParams());
    });
    state = const AuthenticationState.unAuthenticated();
  }

  @override
  void dispose() {
    _authorizationStreamController.close();
    super.dispose();
  }
}
