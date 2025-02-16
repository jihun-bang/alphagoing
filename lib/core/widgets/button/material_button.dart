import 'package:flutter/material.dart';

class AppMaterialButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  final double borderRadius;

  const AppMaterialButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.borderRadius = 0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onPressed,
        child: Ink(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
