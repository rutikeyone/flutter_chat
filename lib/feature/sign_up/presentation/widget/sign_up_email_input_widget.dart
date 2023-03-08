import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/email_ext.dart';
import 'package:flutter_chat/feature/widget/input_widget.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpEmailInputWidget extends ConsumerWidget {
  const SignUpEmailInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailState = ref
        .watch(registrationControllerProvider.select((value) => value.email));

    return InputWidget(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      onValueChanged:
          ref.read(registrationControllerProvider.notifier).changeEmail,
      hintText: S.of(context).enter_the_email,
      textInputAction: TextInputAction.next,
      errorText: emailState.validateError(context),
    );
  }
}
