import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInLoginButton extends ConsumerWidget {
  const SignInLoginButton({
    Key? key,
  }) : super(key: key);

  void signIn(BuildContext context, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    ref.read(signInControllerProvider.notifier).signIn();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCanLogIn =
        ref.watch(signInControllerProvider.select((value) => value.canLogIn));

    return SizedBox(
      width: context.fullWidth,
      height: 86,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, left: 32, right: 32),
        child: ElevatedButton(
          onPressed: isCanLogIn ? () => signIn(context, ref) : null,
          child: Text(S.of(context).login),
        ),
      ),
    );
  }
}
