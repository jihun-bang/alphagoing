import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors.dart';
import '../theme/text_style.dart';

class AlphaGoingTextAreaField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autoFocus;
  final String? label;
  final String? initText;
  final String? hintText;
  final bool enabled;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const AlphaGoingTextAreaField({
    super.key,
    this.controller,
    this.focusNode,
    this.autoFocus = false,
    this.label,
    this.initText,
    this.hintText,
    this.enabled = true,
    this.onChanged,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  State<AlphaGoingTextAreaField> createState() => _AlphaGoingTextAreaFieldState();
}

class _AlphaGoingTextAreaFieldState extends State<AlphaGoingTextAreaField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? TextEditingController()
      ..text = widget.initText ?? '';
    _focusNode = widget.focusNode ?? FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.label != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.label!,
                  style: AppTextStyle.body14sb143
                      .copyWith(color: AppColors.gray500),
                ),
              ],
            ),
          TextFormField(
            focusNode: _focusNode,
            autofocus: widget.autoFocus,
            controller: _controller,
            style: AppTextStyle.body16r150.copyWith(height: 1.625),
            maxLength: widget.maxLength,
            keyboardType: widget.keyboardType,
            readOnly: !widget.enabled,
            inputFormatters: widget.inputFormatters,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              isDense: true,
              hintText: widget.hintText,
              counterText: '',
              filled: true,
              fillColor: Colors.white,
              hintStyle:
                  AppTextStyle.body16r150.copyWith(color: AppColors.gray350),
              contentPadding: const EdgeInsets.all(12),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: AppColors.gray200),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: AppColors.gray200),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(
                  color: AppColors.primary,
                  width: 1.5,
                ),
              ),
            ),
            onChanged: widget.onChanged,
          ),
        ],
      ),
    );
  }
}
