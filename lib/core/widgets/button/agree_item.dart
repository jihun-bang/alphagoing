import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../svg_icon.dart';

class AgreeItem extends StatefulWidget {
  final bool value;
  final String label;
  final Function(bool) onChanged;
  final VoidCallback? onTap;

  const AgreeItem({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
    this.onTap,
  });

  @override
  State<AgreeItem> createState() => _AgreeItemState();
}

class _AgreeItemState extends State<AgreeItem> {
  void _toggleCheck() {
    widget.onChanged.call(!widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: InkWell(
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: _toggleCheck,
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    width: 26,
                    height: 26,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color:
                          widget.value ? AppColors.primary : Colors.transparent,
                      border: Border.all(
                        color: widget.value
                            ? AppColors.primary
                            : AppColors.gray300,
                        width: 1,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const SvgIcon(icon: 'check'),
                  ),
                  Flexible(
                    child: Text(
                      widget.label,
                      style: AppTextStyle.body14r142,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.onTap != null)
            InkWell(
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: widget.onTap,
              child: const SvgIcon(
                icon: 'right',
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            )
        ],
      ),
    );
  }
}
