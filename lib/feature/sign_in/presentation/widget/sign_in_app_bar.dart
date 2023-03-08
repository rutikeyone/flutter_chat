import 'package:flutter/material.dart';
import 'package:flutter_chat/core/constrants/app_assets_constants.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/feature/navigation/main/controller/main_navigator_state.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInAppBar extends ConsumerWidget with PreferredSizeWidget {
  const SignInAppBar({
    Key? key,
  }) : super(key: key);

  void _onGoToRegistration(BuildContext context, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    ref
        .read(mainNavigatorControllerProvider.notifier)
        .addRoute(const MainNavigatorRoute.registrationRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: true,
      title: Text(S.of(context).login),
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              AppAssets.appIcons.userIcon,
              width: 32,
              height: 32,
              color: context.customColors.iconColor2,
            ),
            onPressed: () => _onGoToRegistration(context, ref)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
