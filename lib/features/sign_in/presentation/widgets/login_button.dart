import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final BorderSide? borderSide;
  final Color activeColor;
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.label,
    this.borderSide = const BorderSide(color: AppColors.gray250),
    this.activeColor = Colors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlphaGoingButton(
      borderSide: borderSide,
      label: label,
      labelStyle: AppTextStyle.body16sb140,
      labelColor: Colors.black.withOpacity(0.85),
      activeColor: activeColor,
      onPressed: onPressed,
    );
  }
}
