import 'package:eccomerceapp/common/style/padding.dart';
import 'package:eccomerceapp/common/widget/button/elevated_button.dart';
import 'package:eccomerceapp/routes/routes.dart';

import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/constant/texts.dart';
import 'package:eccomerceapp/utils/help/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctionConstraint.isDarkMode(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: PaddingConstraint.screenPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildEmailField(),
                SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildActionButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ───────────────────────────────
  // 🟢 HEADER SECTION
  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextsConstraint.forgetPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: SizesConstraint.sm),
        Text(
          TextsConstraint.forgetPasswordSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 EMAIL INPUT FIELD
  Widget _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
        prefixIcon: Icon(Iconsax.direct_right),
      ),
    );
  }

  // ───────────────────────────────
  // 🟢 ACTION BUTTON
  Widget _buildActionButton() {
    return CustomElevatedButton(
      bgColor: ColorsConstraint.primary,
      onPressed: () {
        Get.toNamed(Routes.resetPassword);
      },
      child: const Text(
        'Submit',
        style: TextStyle(color: ColorsConstraint.white),
      ),
    );
  }
}
