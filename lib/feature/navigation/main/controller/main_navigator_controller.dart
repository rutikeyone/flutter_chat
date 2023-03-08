import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_chat/core/network/network_info.dart';
import 'package:flutter_chat/feature/authentication/controller/authentication_controller.dart';
import 'package:flutter_chat/feature/authentication/controller/state/authentication_state.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainNavigatorController extends StateNotifier<MainNavigatorScreenState> {
  final AuthenticationController _authenticationController;
  final NetworkInfo _networkInfo;
  late final StreamSubscription<ConnectivityResult> _connectionSubscription;
  late final StreamSubscription<AuthenticationState>
      _authenticationSubscription;

  MainNavigatorController(this._networkInfo, this._authenticationController)
      : super(const MainNavigatorScreenState(
            currentState: MainNavigatorState(
                firstRoute: MainNavigatorFirstRoute.unknown()))) {
    _connectionSubscription = _networkInfo.connectivityChangedStream.listen(
        (event) => _changeFirstRouteByConnectionOrAuthorizationStatus(
            event != ConnectivityResult.none));
    _authenticationSubscription = _authenticationController.stream
        .listen(_authenticationControllerListener);
  }

  void initialize() async {
    final hasConnection = await _networkInfo.hasConnection;
    _changeFirstRouteByConnectionOrAuthorizationStatus(hasConnection);
  }

  void changeFirstRouteState(MainNavigatorFirstRoute firstRoute) {
    if (state.currentState.firstRoute != firstRoute) {
      state = MainNavigatorScreenState(
          currentState: MainNavigatorState(firstRoute: firstRoute));
    }
  }

  void addRoute(MainNavigatorRoute routeState) {
    if (!state.currentState.routes.contains(routeState)) {
      final newRoutes = [...state.currentState.routes, routeState];
      state = MainNavigatorScreenState(
          currentState: state.currentState.copyWith(routes: newRoutes));
    }
  }

  void popRoute(MainNavigatorRoute routeState) {
    if (state.currentState.routes.contains(routeState)) {
      final newRoutes = [...state.currentState.routes]..remove(routeState);
      state = MainNavigatorScreenState(
          currentState: state.currentState.copyWith(routes: newRoutes));
    }
  }

  void _changeFirstRouteByConnectionOrAuthorizationStatus(bool hasConnection) {
    if (hasConnection) {
      if (state.previousState != null &&
          state.previousState!.firstRoute.maybeMap(
              unknown: (_) => false,
              notInternetConnectionFirstRoute: (_) => false,
              orElse: () => true)) {
        state = MainNavigatorScreenState(
            currentState: state.previousState!, previousState: null);
      } else {
        _authenticationControllerListener(_authenticationController.state);
      }
    } else {
      final previousState = state.currentState;
      state = MainNavigatorScreenState(
          currentState: const MainNavigatorState(
              firstRoute:
                  MainNavigatorFirstRoute.notInternetConnectionFirstRoute()),
          previousState: previousState);
    }
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    _authenticationSubscription.cancel();
    super.dispose();
  }

  FutureOr<void> _authenticationControllerListener(
      AuthenticationState event) async {
    event.when(unknown: () {
      state = const MainNavigatorScreenState(
          currentState: MainNavigatorState(
              firstRoute: MainNavigatorFirstRoute.unknown()));
    }, unAuthenticated: () {
      state = const MainNavigatorScreenState(
          currentState: MainNavigatorState(
              firstRoute:
                  MainNavigatorFirstRoute.notAuthenticatedFirstRoute()));
    }, authenticated: (_) {
      state = const MainNavigatorScreenState(
          currentState: MainNavigatorState(
              firstRoute: MainNavigatorFirstRoute.authenticatedFirstRoute()));
    }, authenticatedWithGoogle: (_) {
      state = const MainNavigatorScreenState(
          currentState: MainNavigatorState(
              firstRoute: MainNavigatorFirstRoute.authenticatedFirstRoute()));
    }, authenticatedWithFacebook: (_) {
      state = const MainNavigatorScreenState(
          currentState: MainNavigatorState(
              firstRoute: MainNavigatorFirstRoute.authenticatedFirstRoute()));
    });
  }

  void changeAuthenticatedInitialIndex(int index) {
    state.currentState.firstRoute.mapOrNull(
      authenticatedFirstRoute: (data) {
        state = state.copyWith(
            currentState: state.currentState
                .copyWith(firstRoute: data.copyWith(index: index)));
      },
    );
  }
}
