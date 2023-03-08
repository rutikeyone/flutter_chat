import 'package:flutter/material.dart';
import 'package:flutter_chat/core/factory/screen_factory.dart';

class ChatListNavigator extends StatelessWidget {
  const ChatListNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [ScreenFactory.createChatListPage()],
      onPopPage: (route, result) {
        return true;
      },
    );
  }
}
