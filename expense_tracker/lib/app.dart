import 'package:expense_tracker/bindings/general__bindings.dart';
import 'package:expense_tracker/features/authentication/screens/welcome/welcome.dart';

import 'package:flutter/material.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:expense_tracker/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: PTexts.appName,
      themeMode: ThemeMode.system,
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      home: const WelcomeScreen(),
    );
  }
}
