import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/help/device_helper.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color? bgColor;
  final VoidCallback onPressed;
  final Widget child;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceHelperConstraint.getScreenWidth(context),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(color: Colors.white),
          ),
          backgroundColor: MaterialStateProperty.all(bgColor ?? Colors.white),
        ),
        child: child,
      ),
    );
  }
}
