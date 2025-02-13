import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/text_style.dart';

class AlphagoingSearchField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autoFocus;
  final String? label;
  final String? initText;
  final String? hintText;
  final String? helperText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  const AlphagoingSearchField({
    super.key,
    this.controller,
    this.focusNode,
    this.autoFocus = false,
    this.label,
    this.initText,
    this.hintText,
    this.helperText,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  State<AlphagoingSearchField> createState() => _AlphagoingSearchFieldState();
}

class _AlphagoingSearchFieldState extends State<AlphagoingSearchField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? TextEditingController()
      ..text = widget.initText ?? '';
    _focusNode = widget.focusNode ?? FocusNode();

    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
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
    return TextFormField(
      focusNode: _focusNode,
      autofocus: widget.autoFocus,
      controller: _controller,
      style: AppTextStyle.body16r150,
      maxLines: 1,
      decoration: InputDecoration(
          isDense: true,
          hintText: widget.hintText,
          counterText: '',
          fillColor: AppColors.gray150,
          filled: true,
          hintStyle: AppTextStyle.body16r150.copyWith(color: AppColors.gray350),
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          prefixIcon: SvgIcon(
            icon: 'search',
            width: 15.56,
            height: 15.93,
            color: _hasFocus || _controller.text.isNotEmpty
                ? Colors.black
                : AppColors.gray350,
          ),
          prefixIconConstraints:
              const BoxConstraints.tightFor(height: 40, width: 39.56),
          suffixIcon: _buildClear,
          suffixIconConstraints:
              const BoxConstraints.tightFor(height: 40, width: 44)),
      onChanged: widget.onChanged,
    );
  }

  Widget get _buildClear {
    if (_controller.text.isEmpty) {
      return const SizedBox.shrink();
    }
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          _controller.clear();
          widget.onChanged?.call('');
        },
        child: const Padding(
          padding: EdgeInsets.only(right: 12, left: 8),
          child: SvgIcon(
            icon: 'fill_close_circle',
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
