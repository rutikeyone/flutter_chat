import 'package:flutter/material.dart';
import 'package:flutter_chat/generated/l10n.dart';

class NotInternetConnectionPage extends StatelessWidget {
  const NotInternetConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(S.of(context).not_internet_connection),
        ),
      ),
    );
  }
}
