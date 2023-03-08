import 'package:flutter/cupertino.dart';
import 'package:flutter_chat/feature/chat_list/presentation/chat_list_page.dart';
import 'package:flutter_chat/feature/navigation/chat_list/chat_list_navigator.dart';
import 'package:flutter_chat/feature/navigation/chat_list/profile_navigator.dart';
import 'package:flutter_chat/feature/navigation/home/home_navigator.dart';
import 'package:flutter_chat/feature/not_internet_connection/presentation/not_internet_connection_page.dart';
import 'package:flutter_chat/feature/profile/presentation/profile_page.dart';
import 'package:flutter_chat/feature/sign_in/presentation/sign_in_page.dart';
import 'package:flutter_chat/feature/sign_up/presentation/sign_up_page.dart';
import 'package:flutter_chat/feature/started_loader/presentation/started_loader_page.dart';

class ScreenFactory {
  static Page createStartedLoaderPage() =>
      const CupertinoPage(child: StartedLoaderPage());

  static Page createNotInternetConnectionPage() =>
      const CupertinoPage(child: NotInternetConnectionPage());

  static Page createHomeNavigator() =>
      const CupertinoPage(child: HomeNavigator());

  static Page createSignInPage() => const CupertinoPage(child: SignInPage());

  static Page createSignUpPage() => const CupertinoPage(child: SignUpPage());

  static Page createChatListPage() =>
      const CupertinoPage(child: ChatListPage());

  static Page createProfilePage() => const CupertinoPage(child: ProfilePage());

  static Widget createChatListNavigator() => const ChatListNavigator();

  static Widget createProfileNavigator() => const ProfileNavigator();
}
