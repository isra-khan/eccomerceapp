import 'package:flutter/material.dart';

class CustomSocialIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;
  final double size;
  final Color borderColor;
  final double borderRadius;

  const CustomSocialIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
    this.size = 48,
    this.borderColor = Colors.grey,
    this.borderRadius = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(iconPath, height: size * 0.6, width: size * 0.6),
      ),
    );
  }
}
