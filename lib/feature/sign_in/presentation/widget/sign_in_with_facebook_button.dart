import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInWithFacebookButton extends ConsumerWidget {
  const SignInWithFacebookButton({
    Key? key,
  }) : super(key: key);

  void signInWithFacebook(BuildContext context, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    ref.read(signInControllerProvider.notifier).signInWithFacebook();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: context.fullWidth,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 32, right: 32),
        child: ElevatedButton(
          onPressed: () => signInWithFacebook(context, ref),
          child: Text(S.of(context).sign_in_with_facebook),
        ),
      ),
    );
  }
}
