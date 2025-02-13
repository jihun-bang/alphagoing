import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../svg_icon.dart';

class AllAgreeItem extends StatefulWidget {
  final bool value;
  final bool showOptional;
  final Function(bool) onChanged;

  const AllAgreeItem({
    super.key,
    required this.value,
    this.showOptional = true,
    required this.onChanged,
  });

  @override
  State<AllAgreeItem> createState() => _AllAgreeItemState();
}

class _AllAgreeItemState extends State<AllAgreeItem> {
  void _toggleCheck() {
    widget.onChanged.call(!widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.gray150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: const EdgeInsets.all(20),
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Text(
                            '전체 동의',
                            style: AppTextStyle.title20b140
                                .copyWith(color: AppColors.primary),
                          ),
                        ),
                        if (widget.showOptional)
                          Text(
                            '(선택항목 포함)',
                            style: AppTextStyle.body14r142
                                .copyWith(color: AppColors.gray500),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
