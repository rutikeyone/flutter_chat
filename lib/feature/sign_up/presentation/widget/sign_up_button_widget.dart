import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpButtonWidget extends ConsumerWidget {
  const SignUpButtonWidget({
    Key? key,
  }) : super(key: key);

  void _registration({required WidgetRef ref, required BuildContext context}) {
    FocusScope.of(context).unfocus();
    ref.read(registrationControllerProvider.notifier).signUp();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCanRegistration = ref.watch(registrationControllerProvider
        .select((value) => value.isCanRegistration));

    return Container(
      width: context.fullWidth,
      height: 86,
      padding: const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
      child: ElevatedButton(
        onPressed: isCanRegistration
            ? () => _registration(ref: ref, context: context)
            : null,
        child: Text(
          S.of(context).registration,
        ),
      ),
    );
  }
}
