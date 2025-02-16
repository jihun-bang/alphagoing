import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/button/material_button.dart';
import 'package:alphagoing/core/widgets/image_icon.dart';
import 'package:flutter/material.dart';

class HomeCard1 extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle1;
  final String subTitle2;

  const HomeCard1({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return AppMaterialButton(
      borderRadius: 30,
      onPressed: () {},
      child: Ink(
        width: 255,
        height: 255,
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImgIcon(
              icon: icon,
              width: 70,
              height: 70,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: AppTextStyle.head40sb128,
            ),
            const SizedBox(height: 4),
            Text(
              subTitle1,
              style:
                  AppTextStyle.title24b142.copyWith(color: AppColors.gray650),
            ),
            Text(
              subTitle2,
              style: AppTextStyle.body12r150,
            ),
          ],
        ),
      ),
    );
  }
}
