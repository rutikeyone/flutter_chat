import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/last_name_ext.dart';
import 'package:flutter_chat/feature/widget/input_widget.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpLastNameWidget extends ConsumerWidget {
  const SignUpLastNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastNameState = ref.watch(
        registrationControllerProvider.select((value) => value.lastName));

    return InputWidget(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      onValueChanged: (value) => ref
          .read(registrationControllerProvider.notifier)
          .changeLastName(value),
      hintText: S.of(context).enter_the_last_name,
      textInputAction: TextInputAction.next,
      errorText: lastNameState.validateError(context),
    );
  }
}
