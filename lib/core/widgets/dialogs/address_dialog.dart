import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:daum_postcode_view/daum_postcode_view.dart';
import 'package:flutter/material.dart';

void showAddressPicker({
  required BuildContext context,
  Function(String)? onAddressChanged,
}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final availableHeight =
      (screenHeight * 0.9) - MediaQuery.viewPaddingOf(context).bottom;
  final height = availableHeight / screenHeight;
  showFlexibleBottomSheet(
    context: context,
    bottomSheetBorderRadius: const BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
    ),
    decoration: const BoxDecoration(color: Colors.white),
    minHeight: 0,
    initHeight: height,
    maxHeight: height,
    isExpand: true,
    anchors: [0, height],
    builder: (_, controller, __) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          controller: controller,
          child: Center(
            child: Container(
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
          ),
        ),
        Flexible(
          child: DaumPostcodeView(
            onComplete: (model) {
              onAddressChanged?.call(model.address);
              Navigator.of(context).pop(model);
            },
            options: const DaumPostcodeOptions(
              animation: true,
              hideEngBtn: true,
              themeType: DaumPostcodeThemeType.defaultTheme,
              useBannerLink: false,
            ),
          ),
        ),
      ],
    ),
  );
}
