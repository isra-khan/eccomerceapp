import 'package:eccomerceapp/utils/constant/sizes.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingWidget extends StatelessWidget {
  String? imagePath;
  String? title;
  String? subTitle;
  OnboardingWidget({super.key, this.imagePath, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizesConstraint.appBarHeight),
      child: Column(
        children: [
          Lottie.asset(imagePath.toString()),
          Text(
            title.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(subTitle.toString(), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
