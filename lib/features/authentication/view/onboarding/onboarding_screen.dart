import 'package:eccomerceapp/common/widget/button/elevated_button.dart';
import 'package:eccomerceapp/features/authentication/view/onboarding/widget/onboarding_widget.dart';
import 'package:eccomerceapp/features/authentication/view/onboarding/widget/onboardingdotnavigation.dart';
import 'package:eccomerceapp/utils/constant/images.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/constant/texts.dart';
import 'package:eccomerceapp/utils/help/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SizesConstraint.defaultSpace,
        ),
        child: Stack(
          children: [
            PageView(
              children: [
                OnboardingWidget(
                  imagePath: ImagesConstraint.onboarding1Animation,
                  title: TextsConstraint.onBoardingTitle1,
                  subTitle: TextsConstraint.onBoardingSubTitle1,
                ),
                OnboardingWidget(
                  imagePath: ImagesConstraint.onboarding2Animation,
                  title: TextsConstraint.onBoardingTitle2,
                  subTitle: TextsConstraint.onBoardingSubTitle2,
                ),
                OnboardingWidget(
                  imagePath: ImagesConstraint.onboarding3Animation,
                  title: TextsConstraint.onBoardingTitle3,
                  subTitle: TextsConstraint.onBoardingSubTitle3,
                ),
              ],
            ),
            OnboardingDotnavigation(),
            Positioned(
              left: 0,
              right: 0,
              bottom: SizesConstraint.spaceBtwItems,
              child: CustomElevatedButton(
                onPressed: () {},
                child: Text('Next'),
              ),
            ),

            Positioned(
              top: DeviceHelperConstraint.getAppBarHeight(),
              right: 0,
              child: TextButton(onPressed: () {}, child: Text('Skip')),
            ),
          ],
        ),
      ),
    );
  }
}
