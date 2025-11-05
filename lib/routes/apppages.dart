import 'package:eccomerceapp/common/screen/success_screen.dart';
import 'package:eccomerceapp/features/authentication/forget_password/forget_password.dart';
import 'package:eccomerceapp/features/authentication/reset_password/reset_password_screen.dart';
import 'package:eccomerceapp/features/authentication/reset_password/verify_email_screen.dart';
import 'package:eccomerceapp/features/authentication/signup/signup_screen.dart';
import 'package:eccomerceapp/features/authentication/splash/splash_screen.dart';
import 'package:eccomerceapp/features/authentication/view/login/login_screen.dart';
import 'package:eccomerceapp/features/authentication/view/onboarding/onboarding_screen.dart';
import 'package:eccomerceapp/routes/routes.dart';
import 'package:eccomerceapp/utils/constant/images.dart';
import 'package:eccomerceapp/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(name: Routes.splash, page: () => const SplashScreen()),
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(name: Routes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: Routes.signup, page: () => SignupScreen()),
    GetPage(name: Routes.forgetPassword, page: () => ForgetPasswordScreen()),
    GetPage(name: Routes.resetPassword, page: () => ResetPasswordScreen()),
    GetPage(name: Routes.verifyEmail, page: () => VerifyEmailScreen()),
  ];
}
