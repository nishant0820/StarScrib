import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starscrib/features/authentication/screens/onboarding/onboarding.dart';
import 'package:starscrib/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
