import 'package:flutter/material.dart';

import 'colors.dart';

final kAppTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFFF4F4F4),
  fontFamily: 'Pretendard',
  primaryColor: AppColors.primary,
  appBarTheme: const AppBarTheme(
    toolbarHeight: 44,
    elevation: 0,
    backgroundColor: Colors.white,
    scrolledUnderElevation: 0,
  ),
  sliderTheme: const SliderThemeData(
    thumbColor: Colors.white,
    trackHeight: 2,
    activeTrackColor: Colors.white,
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 6,
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.primary,
  ),
);
