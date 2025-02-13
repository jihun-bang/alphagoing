import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/core/widgets/dialogs/bottom_sheet_dialog.dart';
import 'package:flutter/cupertino.dart';

void showAlphaGoingDatePicker({
  required BuildContext context,
  DateTime? initialDateTime,
  Function(DateTime)? onDateTimeChanged,
}) {
  DateTime time = initialDateTime ?? DateTime.now();
  AlphaGoingBottomSheet.show(
    context: context,
    child: Column(
      children: [
        SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            initialDateTime: time,
            use24hFormat: true,
            onDateTimeChanged: (DateTime newDate) {
              time = newDate;
            },
          ),
        ),
        SafeArea(
          child: AlphaGoingButton.outlineGray(
            label: '확인',
            onPressed: () {
              onDateTimeChanged?.call(time);
              Navigator.of(context).pop();
            },
          ),
        )
      ],
    ),
  );
}
