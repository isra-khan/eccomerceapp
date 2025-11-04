import 'package:eccomerceapp/features/authentication/splash/splash_screen.dart';
import 'package:eccomerceapp/features/authentication/view/login/login_screen.dart';
import 'package:eccomerceapp/features/authentication/view/onboarding/onboarding_screen.dart';
import 'package:eccomerceapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(name: Routes.splash, page: () => const SplashScreen()),
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(name: Routes.onboarding, page: () => const OnboardingScreen()),
  ];
}
