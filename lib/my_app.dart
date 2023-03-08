import 'package:flutter/material.dart';
import 'package:flutter_chat/core/theme/custom_theme.dart';
import 'package:flutter_chat/feature/navigation/main/main_navigator.dart';
import 'package:flutter_chat/generated/l10n.dart' as controller;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        controller.S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const MainNavigator(),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        defaultScale: true,
        maxWidth: 1200,
        minWidth: 480,
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      supportedLocales: controller.S.delegate.supportedLocales,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
    );
  }
}
