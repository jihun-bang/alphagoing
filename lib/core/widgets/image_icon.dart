import 'package:flutter/material.dart';

class ImgIcon extends StatelessWidget {
  final String icon;
  final double? width;
  final double? height;

  const ImgIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      child: Image.asset(
        'assets/icons/icon_$icon.png',
        width: width,
        height: height,
      ),
    );
  }
}
