import 'package:flutter/cupertino.dart';
import 'package:flutter_chat/core/extension/main_navigator_ext.dart';
import 'package:flutter_chat/feature/notifier/presentation/main_notifier_widget.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainNavigator extends ConsumerWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentState = ref.watch(
        mainNavigatorControllerProvider.select((value) => value.currentState));

    return MainNotifierWidget(
      child: Navigator(
        pages: getPages(currentState),
        onPopPage: (route, result) => onPopPage(
          route: route,
          result: result,
          currentState: currentState,
          ref: ref,
        ),
      ),
    );
  }
}
