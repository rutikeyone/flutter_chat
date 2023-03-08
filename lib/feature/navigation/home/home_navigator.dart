import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/core/factory/screen_factory.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNavigator extends ConsumerStatefulWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeNavigator> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomeNavigator> {
  late final List<Widget> _children;

  @override
  void initState() {
    _children = [
      ScreenFactory.createChatListNavigator(),
      ScreenFactory.createProfileNavigator(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeState =
        ref.watch(homeControllerProvider.select((value) => value));

    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: homeState,
          children: _children,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: ref.read(homeControllerProvider.notifier).changeIndex,
          currentIndex: homeState,
          selectedItemColor: context.customColors.selectedItemColor1,
          unselectedItemColor: context.customColors.unselectedItemColor1,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.chat), label: S.of(context).chat),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person), label: S.of(context).profile)
          ],
        ),
      ),
    );
  }
}
