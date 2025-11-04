import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class PaddingConstraint {
  PaddingConstraint._();

  static const EdgeInsetsGeometry screenPadding = EdgeInsets.symmetric(
    horizontal: SizesConstraint.defaultSpace,
    vertical: SizesConstraint.defaultSpace,
  );
}
