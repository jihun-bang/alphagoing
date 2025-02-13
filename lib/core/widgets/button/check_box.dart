import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class AlphaGoingCheckBox extends StatefulWidget {
  final bool value;
  final Function(bool)? onChanged;
  final double size;
  final double? radius;
  final bool showHintCheck;

  const AlphaGoingCheckBox({
    super.key,
    required this.value,
    this.onChanged,
    this.size = 26,
    this.radius,
    this.showHintCheck = false,
  });

  @override
  State createState() => _AlphaGoingCheckBoxState();
}

class _AlphaGoingCheckBoxState extends State<AlphaGoingCheckBox> {
  bool isChecked = false;

  void _toggleCheck() {
    setState(() {
      isChecked = !isChecked;
      widget.onChanged?.call(isChecked);
    });
  }

  @override
  void initState() {
    super.initState();

    isChecked = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    isChecked = widget.value;
    return GestureDetector(
      onTap: _toggleCheck,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: isChecked ? AppColors.primary : Colors.transparent,
          border: Border.all(
            color: isChecked ? AppColors.primary : AppColors.gray300,
            width: 1,
          ),
          borderRadius: widget.radius != null
              ? BorderRadius.circular(widget.radius!)
              : null,
          shape: widget.radius != null ? BoxShape.rectangle : BoxShape.circle,
        ),
        child: SvgIcon(
          icon: 'check',
          color: widget.showHintCheck && !isChecked
              ? AppColors.gray300
              : Colors.white,
        ),
      ),
    );
  }
}
