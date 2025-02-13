import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class AlphaGoingChip extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final TextStyle textStyle;
  final double radius;

  const AlphaGoingChip({
    super.key,
    required this.label,
    this.labelColor = Colors.black,
    this.backgroundColor = AppColors.gray150,
    this.textStyle = AppTextStyle.body12sb136,
    this.radius = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
      child: Text(
        label,
        style: textStyle.copyWith(
          color: labelColor,
        ),
      ),
    );
  }
}
