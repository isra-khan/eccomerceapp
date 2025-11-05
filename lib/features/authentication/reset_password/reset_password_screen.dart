import 'package:eccomerceapp/common/style/padding.dart';
import 'package:eccomerceapp/common/widget/button/elevated_button.dart';
import 'package:eccomerceapp/features/authentication/view/login/login_screen.dart';
import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/images.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/constant/texts.dart';
import 'package:eccomerceapp/utils/help/device_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: PaddingConstraint.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                ImagesConstraint.mailSentImage,
                height: DeviceHelperConstraint.getScreenHeight(context) * 0.4,
              ),

              Text(
                TextsConstraint.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: SizesConstraint.spaceBtwItems),
              Text(
                'israkhan@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: SizesConstraint.spaceBtwItems),
              Text(
                TextsConstraint.resetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizesConstraint.spaceBtwSections),
              CustomElevatedButton(
                bgColor: ColorsConstraint.primary,
                onPressed: () {},
                child: Text(TextsConstraint.done),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(TextsConstraint.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
