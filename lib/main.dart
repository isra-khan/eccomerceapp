import 'package:eccomerceapp/features/authentication/splash/splash_screen.dart';
import 'package:eccomerceapp/routes/appapges.dart';
import 'package:eccomerceapp/routes/routes.dart';
import 'package:eccomerceapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
      theme: AppThemeConstraint.lightTheme,
      home:
          const SplashScreen(), // ✅ puts SplashScreen inside Directionality + Navigator
    );
  }
}
