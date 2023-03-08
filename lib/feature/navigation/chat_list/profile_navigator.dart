import 'package:flutter/material.dart';
import 'package:flutter_chat/core/factory/screen_factory.dart';

class ProfileNavigator extends StatelessWidget {
  const ProfileNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [ScreenFactory.createProfilePage()],
      onPopPage: (route, result) {
        return true;
      },
    );
  }
}
