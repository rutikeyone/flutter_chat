import 'package:flutter/material.dart';
import 'package:flutter_chat/generated/l10n.dart';

class SignUpAppBar extends StatelessWidget with PreferredSizeWidget {
  const SignUpAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(S.of(context).registration),
      automaticallyImplyLeading: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
