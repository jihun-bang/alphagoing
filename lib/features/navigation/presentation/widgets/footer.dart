import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/core/widgets/image_icon.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLeft,
          _buildCenter,
          _buildRight,
        ],
      ),
    );
  }

  Widget get _buildLeft {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlphaGoingButton(
          width: 110,
          onPressed: () {},
          label: 'GOING!',
          activeColor: Colors.black,
        ),
        const SizedBox(height: 8),
        ImgIcon(icon: 'youtube', width: 50, height: 50),
        const SizedBox(height: 8),
        Text('© 2024 .11.22', style: AppTextStyle.body14r142),
      ],
    );
  }

  Widget get _buildCenter {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('알파GOING', style: AppTextStyle.title24b142),
        const SizedBox(height: 18),
        _buildItem(title: '대표', content: 'OOO'),
        _buildItem(title: '이메일', content: 'alphagoingside@gmail.com'),
        _buildItem(title: '사업자등록번호', content: '000-00-00000'),
        _buildItem(title: '통신판매업신고번호', content: '제 2024-부산광안-0050호'),
      ],
    );
  }

  Widget _buildItem({required String title, String? content}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(
          text: title,
          style: AppTextStyle.body12r150.copyWith(color: AppColors.gray600),
          children: [
            const WidgetSpan(
                child: Padding(
              padding: EdgeInsets.only(left: 8),
            )),
            if (content != null) ...[
              const TextSpan(
                  text: 'ㅣ', style: TextStyle(color: AppColors.gray350)),
              const WidgetSpan(
                  child: Padding(
                padding: EdgeInsets.only(right: 8),
              )),
              TextSpan(text: content),
            ]
          ],
        )),
      ),
    );
  }

  Widget get _buildRight {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Ink(
            padding: EdgeInsets.all(24),
            decoration: ShapeDecoration(
              color: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('비지니스 및 제휴 문의',
                    style:
                        AppTextStyle.body14r142.copyWith(color: Colors.white)),
                const SizedBox(height: 8),
                Text(
                  'alphagoingside@gmail.com',
                  style: AppTextStyle.body16b1375.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          child: Text('개인정보처리방침', style: AppTextStyle.body16r150),
          onTap: () {},
        ),
        const SizedBox(height: 4),
        InkWell(
          child: Text('이용약관', style: AppTextStyle.body16r150),
          onTap: () {},
        ),
      ],
    );
  }
}
