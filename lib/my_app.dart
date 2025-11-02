import 'package:eccomerceapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MaterialApp(
          theme: AppThemeConstraint.lightTheme,
          darkTheme: AppThemeConstraint.darkTheme,
        ),
      ),
    );
  }
}
