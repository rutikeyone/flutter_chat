import 'package:flutter/material.dart';
import 'package:flutter_chat/generated/l10n.dart';
import 'package:flutter_chat/injection/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameState = ref.watch(
      authenticationControllerProvider.select(
        (value) => value.whenOrNull(
            authenticated: (user) => user.name,
            authenticatedWithGoogle: (user) => user.name),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              nameState != null ? Text(nameState) : const SizedBox.shrink(),
              const SizedBox(height: 10),
              ElevatedButton(
                child: Text(S.of(context).sign_out),
                onPressed: () => ref
                    .read(authenticationControllerProvider.notifier)
                    .signOut(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
