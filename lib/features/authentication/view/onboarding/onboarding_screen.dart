import 'package:eccomerceapp/utils/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [Lottie.asset(ImagesConstraint.onboarding1Animation)],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
