import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';

import '../svg_icon.dart';

class AlphaGoingListTitleButton extends StatelessWidget {
  final String title;
  final Widget? customTitle;
  final Color titleColor;
  final Widget? leading;
  final Widget? trailing;
  final double height;
  final bool showArrow;
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  const AlphaGoingListTitleButton({
    super.key,
    this.title = '',
    this.customTitle,
    this.height = 56,
    this.titleColor = Colors.black,
    this.leading,
    this.trailing,
    this.showArrow = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        height: height,
        padding: padding,
        child: Ink(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (leading != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: leading,
                      ),
                    Flexible(
                      child: customTitle ??
                          Text(title,
                              style: AppTextStyle.body16r150.copyWith(
                                color: titleColor,
                              )),
                    ),
                  ],
                ),
              ),
              trailing ??
                  (onPressed != null && showArrow
                      ? _buildArrow
                      : const SizedBox.shrink()),
              if (showArrow) _buildArrow
            ],
          ),
        ),
      ),
    );
  }

  Widget get _buildArrow {
    return const SvgIcon(
      icon: 'right_2',
      color: AppColors.gray500,
      width: 24,
      height: 24,
    );
  }
}
