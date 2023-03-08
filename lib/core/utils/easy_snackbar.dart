import 'package:flutter/material.dart';
import 'package:flutter_chat/core/extension/build_context_ext.dart';

class EasySnackBar {
  final BuildContext context;

  const EasySnackBar._(this.context);

  const EasySnackBar.of({required this.context});

  void showSuccessSnackBar({required String label}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.check_circle, color: Colors.white),
            ),
            Flexible(child: Text(label)),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: context.customColors.snackBarBackgroundColor1,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void showInfoSnackbar({required String label}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.info, color: Colors.white),
            ),
            Flexible(child: Text(label)),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: context.customColors.snackBarBackgroundColor1,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void showFailureSnackbar({required String label, Duration? duration}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.error, color: Colors.white),
            ),
            Flexible(child: Text(label)),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color.fromRGBO(255, 54, 54, 1),
        duration: duration ?? const Duration(seconds: 2),
      ),
    );
  }
}
