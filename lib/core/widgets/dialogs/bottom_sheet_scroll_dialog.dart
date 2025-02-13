import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';
import '../button/button.dart';

class AlphaGoingBottomScrollSheet extends StatelessWidget {
  final String? title;
  final String? bottomLabel;
  final VoidCallback? onBottomTap;
  final bool isDark;
  final bool showDragBar;
  final bool showLine;
  final bool showExit;
  final bool hasPadding;
  final Widget child;

  const AlphaGoingBottomScrollSheet({
    super.key,
    this.title,
    this.bottomLabel,
    this.isDark = true,
    this.showDragBar = false,
    this.showLine = true,
    this.showExit = false,
    this.hasPadding = true,
    required this.child,
    this.onBottomTap,
  });

  static Future<void> show({
    required BuildContext context,
    String? title,
    String? bottomLabel,
    bool isDark = false,
    bool showDragBar = false,
    bool showLine = false,
    bool showExit = false,
    bool hasPadding = true,
    required Widget child,
    VoidCallback? onBottomTap,
  }) async {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      clipBehavior: Clip.antiAlias,
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: true,
      builder: (_) => AlphaGoingBottomScrollSheet(
        title: title,
        isDark: isDark,
        showDragBar: showDragBar,
        showExit: showExit,
        showLine: showLine,
        hasPadding: hasPadding,
        bottomLabel: bottomLabel,
        onBottomTap: onBottomTap,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (showDragBar)
                  Container(
                    width: 56,
                    height: 5,
                    margin: const EdgeInsets.only(top: 10, bottom: 9),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDFDFDF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                  ),
                if (title != null)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, bottom: 20, left: 16, right: 16),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: Text(title!, style: AppTextStyle.title20b140),
                        ),
                        if (showExit)
                          Positioned(
                              right: 0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const SvgIcon(
                                  icon: 'close',
                                  width: 24,
                                  color: AppColors.gray600,
                                ),
                              ))
                      ],
                    ),
                  )
                else
                  SizedBox(height: 16),
                Flexible(
                  child: Padding(
                    padding: hasPadding
                        ? const EdgeInsets.only(left: 16, right: 16, bottom: 16)
                        : EdgeInsets.zero,
                    child: child,
                  ),
                ),
                if (bottomLabel != null)
                  Ink(
                    color: AppColors.primary,
                    child: AlphaGoingButton(
                      label: bottomLabel!,
                      onPressed: onBottomTap!,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
