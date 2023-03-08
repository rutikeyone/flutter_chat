import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/core/factory/screen_factory.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_state.dart';
import 'package:flutter_chat/feature/navigation/main/main_navigator.dart';
import 'package:flutter_chat/feature/navigation/main/route_mapper.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension MainNavigatorExt on MainNavigator {
  List<Page<dynamic>> getPages(MainNavigatorState currentState) {
    List<Page<dynamic>> pages = [];

    currentState.firstRoute.map(
      unknown: (_) => pages.add(ScreenFactory.createStartedLoaderPage()),
      notInternetConnectionFirstRoute: (_) =>
          pages.add(ScreenFactory.createNotInternetConnectionPage()),
      notAuthenticatedFirstRoute: (_) =>
          pages.addAll(_getPageForNotAuthenticated(currentState.routes)),
      authenticatedFirstRoute: (_) =>
          pages.addAll(_getPageForAuthenticated(currentState.routes)),
    );
    return pages;
  }

  List<Page> _getPageForAuthenticated(List<MainNavigatorRoute> routes) {
    List<Page> pages = [ScreenFactory.createHomeNavigator()];

    return pages;
  }

  List<Page> _getPageForNotAuthenticated(List<MainNavigatorRoute> routes) {
    List<Page> pages = [ScreenFactory.createSignInPage()];

    for (var e in routes) {
      pages.add(RouteMapper.routeMapper(e));
    }
    return pages;
  }

  bool onPopPage({
    required Route route,
    required dynamic result,
    required MainNavigatorState currentState,
    required WidgetRef ref,
  }) {
    if (!route.didPop(result)) {
      return false;
    }

    if (currentState.routes.isNotEmpty) {
      currentState.lastRoute!.mapOrNull(
        registrationRoute: (value) =>
            ref.read(mainNavigatorControllerProvider.notifier).popRoute(value),
      );
    }
    return true;
  }
}
