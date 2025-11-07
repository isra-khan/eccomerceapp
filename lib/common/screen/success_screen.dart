import 'package:eccomerceapp/common/style/padding.dart';
import 'package:eccomerceapp/common/widget/button/elevated_button.dart';

import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/help/device_helper.dart';
import 'package:eccomerceapp/utils/help/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SuccessScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback? onPressed;
  final bool showEmailField;
  String? imagePath;
  SuccessScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.onPressed,
    this.showEmailField = false,
    required this.imagePath,
  });

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
                Image.asset(
                  imagePath ?? "",
                  height: DeviceHelperConstraint.getScreenHeight(context) * 0.4,
                ),

                _buildHeader(context),
                SizedBox(height: SizesConstraint.spaceBtwSections),
                if (showEmailField) _buildEmailField(),
                if (showEmailField)
                  SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildActionButton(onPressed),
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
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: SizesConstraint.sm),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
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
  Widget _buildActionButton(VoidCallback? onPressed) {
    return CustomElevatedButton(
      bgColor: ColorsConstraint.primary,
      onPressed: onPressed ?? () {},
      child: Text(
        buttonText,
        style: const TextStyle(color: ColorsConstraint.white),
      ),
    );
  }
}
