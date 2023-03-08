import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/login_ext.dart';
import 'package:flutter_chat/feature/widget/input_widget.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpLoginInputWidget extends ConsumerWidget {
  const SignUpLoginInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref
        .watch(registrationControllerProvider.select((value) => value.login));

    return InputWidget(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      onValueChanged:
          ref.read(registrationControllerProvider.notifier).changeLogin,
      hintText: S.of(context).enter_the_login,
      textInputAction: TextInputAction.next,
      errorText: loginState.validateError(context),
    );
  }
}
