import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/features/home/presentation/widgets/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/home_card_1.dart';
import '../widgets/home_notice.dart';
import '../widgets/main_banner_1.dart';
import '../widgets/youtube_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSection1,
        SizedBox(height: 60),
        _buildSection2,
        SizedBox(height: 60),
        YoutubeCard(),
        SizedBox(height: 60),
        _buildSection3,
        SizedBox(height: 60),
      ],
    );
  }

  Widget get _buildSection1 {
    return Row(
      children: [
        MainBanner1(),
        SizedBox(width: 20),
        Column(
          children: [
            Row(
              children: [
                HomeCard1(
                  icon: 'coin',
                  title: '1080',
                  subTitle1: '크레딧',
                  subTitle2: '잔여 수량을 표기합니다',
                ),
                SizedBox(width: 20),
                HomeCard1(
                  icon: 'blog_search',
                  title: '145',
                  subTitle1: '월 포스팅 누적',
                  subTitle2: '이달 1일부터의 포스팅 수',
                ),
              ],
            ),
            SizedBox(height: 20),
            HomeNotice(),
          ],
        ),
      ],
    );
  }

  Widget get _buildSection2 {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'GO!GO!GO!',
          style: TextStyle(
            color: Color(0xFF0D0D0D),
            fontSize: 55,
            fontWeight: FontWeight.w600,
            height: 1.10,
            letterSpacing: -1.60,
          ),
        ),
        SizedBox(height: 20),
        Image.asset('assets/images/img_main_2.png'),
      ],
    );
  }

  Widget get _buildSection3 {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '크레딧 충전 안내',
              style: TextStyle(
                color: Color(0xFF0D0D0D),
                fontSize: 55,
                fontWeight: FontWeight.w600,
                height: 1.10,
                letterSpacing: -1.60,
              ),
            ),
            Container(
              width: 120,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Color(0xFF1A1A1A)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('*VAT 별도', style: AppTextStyle.body16sb140),
            )
          ],
        ),
        SizedBox(height: 20),
        CreditCard(),
      ],
    );
  }
}
