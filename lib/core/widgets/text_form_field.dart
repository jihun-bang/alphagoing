import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors.dart';
import '../theme/text_style.dart';

class AlphaGoingTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autoFocus;
  final String? label;
  final String? initText;
  final String? suffixText;
  final String? hintText;
  final String? helperText;
  final String? completeText;
  final String? errorText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final bool showClear;
  final bool showCounter;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final bool isButton;
  final bool _showEye;

  const AlphaGoingTextFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.autoFocus = false,
    this.label,
    this.initText,
    this.suffixText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.completeText,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.showClear = false,
    this.showCounter = false,
    this.onChanged,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.isButton = false,
    this.inputFormatters,
  }) : _showEye = false;

  const AlphaGoingTextFormField.readOnly({
    super.key,
    this.controller,
    this.focusNode,
    this.initText,
    this.suffixText,
    this.label,
    this.hintText,
    this.helperText,
    this.errorText,
    this.completeText,
    this.suffixIcon,
    this.isButton = false,
    this.obscureText = false,
  })  : enabled = false,
        maxLength = null,
        maxLines = null,
        keyboardType = null,
        inputFormatters = null,
        autoFocus = false,
        onChanged = null,
        showClear = false,
        showCounter = false,
        _showEye = false;

  const AlphaGoingTextFormField.password({
    super.key,
    this.controller,
    this.focusNode,
    this.autoFocus = false,
    this.label,
    this.suffixText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.completeText,
    this.suffixIcon,
    this.onChanged,
  })  : initText = null,
        maxLines = 1,
        obscureText = true,
        enabled = true,
        maxLength = 20,
        inputFormatters = null,
        keyboardType = null,
        showClear = false,
        showCounter = false,
        isButton = false,
        _showEye = true;

  @override
  State<AlphaGoingTextFormField> createState() =>
      _AlphaGoingTextFormFieldState();
}

class _AlphaGoingTextFormFieldState extends State<AlphaGoingTextFormField> {
  late TextEditingController _controller;
  late bool _obscureText;
  bool get _hasError => widget.errorText?.trim().isNotEmpty == true;

  @override
  void initState() {
    super.initState();

    _obscureText = widget.obscureText;
    _controller = widget.controller ?? TextEditingController()
      ..text = widget.initText ?? '';
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isButton) {
      _controller.text = widget.initText ?? '';
    }
    return IgnorePointer(
      ignoring: !widget.enabled || widget.isButton,
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
                if (widget.showCounter) _buildCounter,
              ],
            ),
          TextFormField(
            focusNode: widget.focusNode,
            autofocus: widget.autoFocus,
            controller: _controller,
            style: AppTextStyle.body16r150,
            obscureText: _obscureText,
            maxLength: widget.maxLength,
            keyboardType: widget.keyboardType,
            readOnly: !widget.enabled || widget.isButton,
            inputFormatters: widget.inputFormatters,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
                isDense: true,
                hintText: widget.hintText,
                counterText: '',
                hintStyle:
                    AppTextStyle.body16r150.copyWith(color: AppColors.gray350),
                contentPadding: const EdgeInsets.all(8),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.gray250),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.gray250),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _hasError ? AppColors.red600 : AppColors.primary,
                    width: 1.5,
                  ),
                ),
                suffixIcon: Align(
                  alignment: Alignment.centerRight,
                  child: widget.suffixIcon ??
                      (widget._showEye
                          ? _buildShowPassword
                          : widget.showClear
                              ? _buildClear
                              : null),
                ),
                suffixIconConstraints:
                    const BoxConstraints.tightFor(height: 40, width: 40)),
            onChanged: (value) {
              widget.onChanged?.call(value);
              if (widget.suffixText != null) {
                _controller.text = '$value${widget.suffixText}';
                _controller.selection = TextSelection.fromPosition(
                    TextPosition(offset: value.isEmpty ? 0 : 1));
              }
            },
          ),
          if (_hasError)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                widget.errorText!,
                style:
                    AppTextStyle.body12r150.copyWith(color: AppColors.red600),
              ),
            )
          else if (widget.helperText?.trim().isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                widget.helperText!,
                style:
                    AppTextStyle.body12r150.copyWith(color: AppColors.gray350),
              ),
            )
          else if (widget.completeText?.trim().isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                widget.completeText!,
                style:
                    AppTextStyle.body12r150.copyWith(color: AppColors.blue600),
              ),
            ),
        ],
      ),
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
        child: const SvgIcon(
          icon: 'fill_close_circle',
          width: 24,
          height: 24,
        ),
      ),
    );
  }

  Widget get _buildShowPassword {
    return IconButton(
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      icon: SvgIcon(
        icon: 'fill_${_obscureText ? 'eye' : 'hide'}',
        width: 24,
        height: 24,
      ),
    );
  }

  Widget get _buildCounter {
    final style = AppTextStyle.body14r142.copyWith(color: AppColors.gray350);
    return Row(
      children: [
        Text(
          '${_controller.text.length}',
          style: style,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text('/', style: style),
        ),
        Text(
          widget.maxLength?.toString() ?? '0',
          style: style,
        ),
      ],
    );
  }
}
