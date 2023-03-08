import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/name_ext.dart';
import 'package:flutter_chat/feature/widget/input_widget.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpFirstNameWidget extends ConsumerWidget {
  const SignUpFirstNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameState =
        ref.watch(registrationControllerProvider.select((value) => value.name));

    return InputWidget(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      onValueChanged: (value) =>
          ref.read(registrationControllerProvider.notifier).changeName(value),
      hintText: S.of(context).enter_the_first_name,
      textInputAction: TextInputAction.next,
      errorText: nameState.validateError(context),
    );
  }
}
