import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';
import '../button/button.dart';

class HorizontalButtonDialog extends StatelessWidget {
  final BuildContext context;
  final String title;
  final String? subTitle;
  final AlphaGoingButton button1;
  final AlphaGoingButton? button2;

  const HorizontalButtonDialog({
    super.key,
    required this.context,
    required this.title,
    required this.subTitle,
    required this.button1,
    this.button2,
  });

  static Future<void> show({
    required BuildContext context,
    required String title,
    String? subTitle,
    required AlphaGoingButton button1,
    AlphaGoingButton? button2,
  }) async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return HorizontalButtonDialog(
            context: context,
            title: title,
            subTitle: subTitle,
            button1: button1,
            button2: button2,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 294,
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                title,
                style: AppTextStyle.body16b1375,
                textAlign: TextAlign.center,
              ),
            ),
            if (subTitle != null)
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 16),
                  child: Text(
                    subTitle!,
                    style: AppTextStyle.body14r157
                        .copyWith(color: AppColors.gray600),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            else
              const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: button1),
                SizedBox(width: 8),
                if (button2 != null)
                  Expanded(
                    child: button2!,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
