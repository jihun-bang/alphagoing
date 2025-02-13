import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class AlphaGoingLogo extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;

  const AlphaGoingLogo({
    super.key,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgIcon(
      icon: 'logo',
      width: width,
      height: height,
      color: color,
    );
  }
}
