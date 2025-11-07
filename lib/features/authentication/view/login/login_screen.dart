import 'package:eccomerceapp/common/style/padding.dart';
import 'package:eccomerceapp/common/widget/button/elevated_button.dart';
import 'package:eccomerceapp/common/widget/custom_social_buttons.dart';
import 'package:eccomerceapp/routes/routes.dart';
import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/images.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/constant/texts.dart';
import 'package:eccomerceapp/utils/help/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                _buildFormFields(),
                SizedBox(height: SizesConstraint.spaceBtwInputFields / 2),
                _buildRememberMeRow(),
                SizedBox(height: SizesConstraint.spaceBtwSections),
                _buildActionButtons(isDarkMode),
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
  // 🟢 HEADER
  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextsConstraint.loginTitle,
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
  // 🟢 FORM FIELDS
  Widget _buildFormFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: SizesConstraint.spaceBtwInputFields),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
          ),
        ),
      ],
    );
  }

  //
  // 🟢 REMEMBER ME + FORGOT PASSWORD ROW
  Widget _buildRememberMeRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text(TextsConstraint.rememberMe),
          ],
        ),
        TextButton(
          onPressed: () {
            Get.offAllNamed(Routes.forgetPassword);
          },
          child: Text(TextsConstraint.forgetPassword),
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 LOGIN & CREATE ACCOUNT BUTTONS
  Widget _buildActionButtons(bool isDarkMode) {
    return Column(
      children: [
        CustomElevatedButton(
          bgColor: ColorsConstraint.primary,
          onPressed: () {
            Get.offAllNamed(Routes.home);
          },
          child: const Text(
            TextsConstraint.signIn,
            style: TextStyle(color: ColorsConstraint.white),
          ),
        ),
        SizedBox(height: SizesConstraint.spaceBtwItems / 2),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              Get.toNamed(Routes.signup);
            },
            child: Text(
              TextsConstraint.createAccount,
              style: TextStyle(
                color: isDarkMode
                    ? ColorsConstraint.white
                    : ColorsConstraint.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ───────────────────────────────
  // 🟢 DIVIDER WITH "OR SIGN IN WITH"
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
  // 🟢 SOCIAL LOGIN BUTTONS
  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSocialIconButton(
          iconPath: ImagesConstraint.googleIcon,
          onPressed: () {
            // Handle Google login
          },
          size: SizesConstraint.iconMd * 2,
        ),
        SizedBox(width: SizesConstraint.spaceBtwItems),
        CustomSocialIconButton(
          iconPath: ImagesConstraint.facebookIcon,
          onPressed: () {
            // Handle Facebook login
          },
          size: SizesConstraint.iconMd * 2,
        ),
      ],
    );
  }
}
