import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/image_icon.dart';
import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class HomeNotice extends StatelessWidget {
  const HomeNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      width: 530,
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '공지사항',
            style: AppTextStyle.title20b140.copyWith(color: AppColors.gray650),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 65,
                height: 65,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.68, -0.73),
                    end: Alignment(-0.68, 0.73),
                    colors: [Color(0xFF9C5CFF), Color(0xFF6251A2)],
                  ),
                  shape: OvalBorder(),
                ),
                child: Text('NEW',
                    style: AppTextStyle.title20b140.copyWith(
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '시스템 점검이 예정되어 있습니다.',
                      style: AppTextStyle.title24b142
                          .copyWith(color: AppColors.gray650),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '2025-02-16',
                      style: AppTextStyle.title20b140,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 1,
              margin: EdgeInsets.symmetric(vertical: 6),
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Text(
                '서비스 오픈 안내',
                style:
                    AppTextStyle.title24b142.copyWith(color: AppColors.gray650),
              ),
              const SizedBox(width: 8),
              Text(
                '2025-02-16',
                style: AppTextStyle.title20b140,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
