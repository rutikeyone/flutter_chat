import 'package:flutter/cupertino.dart';
import 'package:flutter_chat/core/factory/screen_factory.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_state.dart';

class RouteMapper {
  static Page routeMapper(MainNavigatorRoute mainNavigatorRoute) {
    return mainNavigatorRoute.map(
      registrationRoute: (_) => ScreenFactory.createSignUpPage(),
    );
  }
}
