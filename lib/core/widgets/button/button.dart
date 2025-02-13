import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';

class AlphaGoingButton extends StatefulWidget {
  final bool enabled;
  final String label;
  final double prefixIconPadding;
  final Widget? prefixIcon;
  final double? width;
  final double height;
  final BorderSide? borderSide;
  final TextStyle labelStyle;
  final Color labelColor;
  final Color disabledLabelColor;
  final Color? activeColor;
  final Color disabledColor;
  final Color loadingColor;
  final BorderRadius radius;
  final VoidCallback onPressed;
  final Widget? child;

  const AlphaGoingButton({
    super.key,
    this.enabled = true,
    this.label = '',
    this.prefixIconPadding = 8,
    this.prefixIcon,
    this.width,
    this.height = 48,
    this.borderSide,
    this.labelStyle = AppTextStyle.body16sb1375,
    this.labelColor = Colors.white,
    this.disabledLabelColor = Colors.white,
    this.activeColor = AppColors.primary,
    this.disabledColor = AppColors.gray250,
    this.loadingColor = Colors.white,
    this.radius = const BorderRadius.all(Radius.circular(6)),
    this.child,
    required this.onPressed,
  });

  const AlphaGoingButton.primary({
    super.key,
    this.enabled = true,
    required this.label,
    this.width,
    this.height = 48,
    this.prefixIconPadding = 8,
    this.prefixIcon,
    this.child,
    required this.onPressed,
  })  : labelStyle = AppTextStyle.body16sb1375,
        labelColor = Colors.white,
        disabledLabelColor = Colors.white,
        activeColor = AppColors.primary,
        disabledColor = AppColors.gray250,
        borderSide = null,
        loadingColor = Colors.white,
        radius = const BorderRadius.all(Radius.circular(6));

  const AlphaGoingButton.red({
    super.key,
    this.enabled = true,
    required this.label,
    this.width,
    this.height = 48,
    this.prefixIconPadding = 8,
    this.prefixIcon,
    this.child,
    required this.onPressed,
  })  : labelStyle = AppTextStyle.body16sb1375,
        labelColor = Colors.white,
        disabledLabelColor = Colors.white,
        activeColor = AppColors.red600,
        disabledColor = AppColors.gray250,
        loadingColor = Colors.white,
        borderSide = null,
        radius = const BorderRadius.all(Radius.circular(6));

  const AlphaGoingButton.outlinePrimary({
    super.key,
    this.enabled = true,
    required this.label,
    this.width,
    this.height = 48,
    this.prefixIconPadding = 8,
    this.prefixIcon,
    this.child,
    this.labelStyle = AppTextStyle.body16sb1375,
    required this.onPressed,
  })  : labelColor = AppColors.primary,
        loadingColor = AppColors.primary,
        borderSide = const BorderSide(width: 1, color: AppColors.primary),
        radius = const BorderRadius.all(Radius.circular(6)),
        disabledLabelColor = AppColors.gray350,
        activeColor = Colors.transparent,
        disabledColor = Colors.transparent;

  const AlphaGoingButton.outlineGray({
    super.key,
    this.enabled = true,
    required this.label,
    this.width,
    this.height = 48,
    this.prefixIconPadding = 8,
    this.prefixIcon,
    this.child,
    this.labelColor = Colors.black,
    this.labelStyle = AppTextStyle.body16sb1375,
    this.borderSide = const BorderSide(width: 1, color: AppColors.gray200),
    required this.onPressed,
  })  : radius = const BorderRadius.all(Radius.circular(6)),
        disabledLabelColor = AppColors.gray350,
        activeColor = Colors.white,
        disabledColor = Colors.white,
        loadingColor = AppColors.gray350;

  const AlphaGoingButton.text({
    super.key,
    this.enabled = true,
    this.label = '',
    this.labelStyle = AppTextStyle.body16b150,
    this.disabledLabelColor = AppColors.gray350,
    this.activeColor = Colors.white,
    this.disabledColor = Colors.white,
    this.radius = const BorderRadius.all(Radius.circular(6)),
    this.width,
    this.height = 56,
    this.borderSide = BorderSide.none,
    this.labelColor = Colors.black,
    this.prefixIconPadding = 8,
    this.prefixIcon,
    this.child,
    required this.onPressed,
  }) : loadingColor = AppColors.gray350;

  @override
  State<AlphaGoingButton> createState() => _AlphaGoingButtonState();
}

class _AlphaGoingButtonState extends State<AlphaGoingButton> {
  bool _isLoading = false;
  bool get _disabled => _isLoading || !widget.enabled;

  Future<void> _handlePress() async {
    if (_disabled) {
      return;
    }
    setState(() {
      _isLoading = true;
    });
    await Future.sync(widget.onPressed);
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints.tightFor(height: widget.height, width: widget.width),
      child: MaterialButton(
        minWidth: widget.width,
        height: widget.height,
        color: widget.enabled ? widget.activeColor : widget.disabledColor,
        disabledColor: widget.disabledColor,
        elevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        padding: EdgeInsets.zero,
        onPressed: _disabled ? null : () async => await _handlePress(),
        shape: RoundedRectangleBorder(
          side: widget.borderSide ?? BorderSide.none,
          borderRadius: widget.radius,
        ),
        child: Center(
          child: switch (_isLoading) {
            true => SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: widget.loadingColor,
                ),
              ),
            false => widget.child ??
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.prefixIcon != null)
                        Padding(
                          padding:
                              EdgeInsets.only(right: widget.prefixIconPadding),
                          child: widget.prefixIcon,
                        ),
                      Text(
                        widget.label,
                        textAlign: TextAlign.center,
                        style: widget.labelStyle.copyWith(
                            color: (_isLoading || !widget.enabled)
                                ? widget.disabledLabelColor
                                : widget.labelColor),
                      ),
                    ],
                  ),
                ),
          },
        ),
      ),
    );
  }
}
