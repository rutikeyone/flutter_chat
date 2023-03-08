import 'package:flutter/material.dart';

class StartedLoaderPage extends StatelessWidget {
  const StartedLoaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
