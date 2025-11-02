import 'dart:async';

import 'package:eccomerceapp/features/authentication/view/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:eccomerceapp/features/authentication/view/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait until Flutter builds the first frame, then navigate
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 3), () {
        if (!mounted) return;
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const OnboardingScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check if current theme is dark
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Image.asset(
          isDarkMode
              ? 'assets/logo/white_app_logo.png' // 🌙 Dark mode → white logo
              : 'assets/logo/black_app_logo.png', // ☀️ Light mode → black logo
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
