import 'package:eccomerceapp/features/authentication/view/onboarding/onboarding_screen.dart';
import 'package:eccomerceapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeConstraint.lightTheme,
      darkTheme: AppThemeConstraint.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
