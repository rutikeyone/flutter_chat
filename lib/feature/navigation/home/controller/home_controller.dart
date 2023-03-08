import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_controller.dart';
import 'package:riverpod/riverpod.dart';

class HomeController extends StateNotifier<int> {
  late final MainNavigatorController _mainNavigatorController;

  HomeController({
    required MainNavigatorController mainNavigatorController,
  }) : super(mainNavigatorController.state.currentState.firstRoute.maybeMap(
            authenticatedFirstRoute: (authenticatedState) =>
                authenticatedState.index,
            orElse: () => 0)) {
    _mainNavigatorController = mainNavigatorController;
  }

  void changeIndex(int index) {
    if (!mounted) return;
    _mainNavigatorController.changeAuthenticatedInitialIndex(index);
    state = index;
  }
}
