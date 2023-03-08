import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_navigator_state.freezed.dart';

@freezed
class MainNavigatorScreenState with _$MainNavigatorScreenState {
  const factory MainNavigatorScreenState({
    required MainNavigatorState currentState,
    @Default(null) MainNavigatorState? previousState,
  }) = _MainNavigatorScreenState;
}

@freezed
class MainNavigatorState with _$MainNavigatorState {
  MainNavigatorRoute? get lastRoute => routes.lastOrNull;

  const MainNavigatorState._();

  const factory MainNavigatorState({
    required MainNavigatorFirstRoute firstRoute,
    @Default(<MainNavigatorRoute>[]) List<MainNavigatorRoute> routes,
  }) = _MainNavigatorState;
}

@freezed
class MainNavigatorRoute with _$MainNavigatorRoute {
  const factory MainNavigatorRoute.registrationRoute() =
      _MainNavigatorRegistrationRoute;
}

@freezed
class MainNavigatorFirstRoute with _$MainNavigatorFirstRoute {
  const factory MainNavigatorFirstRoute.unknown() =
      _MainNavigationUnknownFirstRoute;
  const factory MainNavigatorFirstRoute.notInternetConnectionFirstRoute() =
      _MainNavigatorNotInternetConnectionFirstRoute;
  const factory MainNavigatorFirstRoute.notAuthenticatedFirstRoute() =
      _MainNavigatorNotAuthenticatedFirstRoute;
  const factory MainNavigatorFirstRoute.authenticatedFirstRoute({
    @Default(0) int index,
  }) = _MainNavigatorAuthenticatedFirstRoute;
}
