import 'package:eccomerceapp/common/style/padding.dart';
import 'package:eccomerceapp/common/widget/button/elevated_button.dart';
import 'package:eccomerceapp/common/widget/custom_social_buttons.dart';
import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/images.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/constant/texts.dart';
import 'package:eccomerceapp/utils/help/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                _buildNameFields(),
                SizedBox(height: SizesConstraint.spaceBtwInputFields),
                _buildContactFields(),
                SizedBox(height: SizesConstraint.spaceBtwInputFields / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: TextsConstraint.iAgreeTo + " ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            text: TextsConstraint.privacyPolicy + " ",
                            style: const TextStyle(
                              color: ColorsConstraint.primary,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: TextsConstraint.and + " ",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: TextsConstraint.termsOfUse,
                            style: const TextStyle(
                              color: ColorsConstraint.primary,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildActionButtons(),
                SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildDividerWithText(context, isDarkMode),
                SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildSocialButtons(),
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
          TextsConstraint.signupTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: SizesConstraint.sm),
        Text(
          TextsConstraint.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 NAME INPUT FIELDS
  Widget _buildNameFields() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'First Name',
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
        ),
        SizedBox(width: SizesConstraint.spaceBtwItems),
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Last Name',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 CONTACT INPUT FIELDS (Email, Phone, Password)
  Widget _buildContactFields() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: SizesConstraint.spaceBtwInputFields),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: SizesConstraint.spaceBtwInputFields),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Iconsax.lock),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 ACTION BUTTONS (Sign In & Create Account)
  Widget _buildActionButtons() {
    return Column(
      children: [
        CustomElevatedButton(
          bgColor: ColorsConstraint.primary,
          onPressed: () {},
          child: const Text(
            TextsConstraint.createAccount,
            style: TextStyle(color: ColorsConstraint.white),
          ),
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 DIVIDER WITH TEXT
  Widget _buildDividerWithText(BuildContext context, bool isDarkMode) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            indent: 60,
            endIndent: 5,
            color: isDarkMode
                ? ColorsConstraint.grey
                : ColorsConstraint.darkGrey,
          ),
        ),
        Text(
          TextsConstraint.orSignInWith,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
          child: Divider(
            indent: 5,
            endIndent: 60,
            color: isDarkMode
                ? ColorsConstraint.grey
                : ColorsConstraint.darkGrey,
          ),
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 SOCIAL BUTTONS
  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSocialIconButton(
          iconPath: ImagesConstraint.googleIcon,
          onPressed: () {},
          size: SizesConstraint.iconMd * 2,
        ),
        SizedBox(width: SizesConstraint.spaceBtwItems),
        CustomSocialIconButton(
          iconPath: ImagesConstraint.facebookIcon,
          onPressed: () {},
          size: SizesConstraint.iconMd * 2,
        ),
      ],
    );
  }
}
