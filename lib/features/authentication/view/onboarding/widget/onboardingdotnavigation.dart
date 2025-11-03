import 'package:eccomerceapp/features/authentication/view/onboarding/controller/onboarding_controller.dart';
import 'package:eccomerceapp/utils/help/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotnavigation extends StatelessWidget {
  const OnboardingDotnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: DeviceHelperConstraint.getBottomNavigationBarHeight() * 6,
      left: DeviceHelperConstraint.getScreenWidth(context) / 3,
      right: DeviceHelperConstraint.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
