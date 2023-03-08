import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/password_ext.dart';
import 'package:flutter_chat/feature/widget/input_widget.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPasswordInputWidget extends ConsumerWidget {
  const SignInPasswordInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordState =
        ref.watch(signInControllerProvider.select((value) => value.password));

    return InputWidget(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      onValueChanged: (value) =>
          ref.read(signInControllerProvider.notifier).changePassword(value),
      hintText: S.of(context).enter_the_password,
      errorText: passwordState.validateError(context),
      obscureText: true,
    );
  }
}
