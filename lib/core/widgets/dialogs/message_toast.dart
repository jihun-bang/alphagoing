import 'package:alphagoing/core/routes/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';

void showMessageToast(
    {bool showClose = false,
    String? message,
    Widget? child,
    int milliseconds = 2000,
    Duration? duration = const Duration(milliseconds: 2000)}) {
  assert(
      message != null || child != null || (routerKey.currentContext == null));
  final curContext = routerKey.currentContext!;
  final toast = FToast();
  toast.init(curContext);
  toast.removeCustomToast();
  toast.removeQueuedCustomToasts();
  toast.showToast(
      ignorePointer: true,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 350),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: ShapeDecoration(
                color: showClose ? Colors.black : AppColors.snackBar,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: child ??
                        Text(
                          message!,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.body14r157.copyWith(
                            color: Colors.white,
                          ),
                        ),
                  ),
                  if (showClose)
                    GestureDetector(
                        onTap: () {
                          toast.removeCustomToast();
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Icon(
                            CupertinoIcons.xmark,
                            color: Colors.white,
                          ),
                        ))
                ],
              ),
            ),
          ],
        ),
      ),
      gravity: ToastGravity.CENTER,
      toastDuration: duration ?? Duration(milliseconds: milliseconds));
}
