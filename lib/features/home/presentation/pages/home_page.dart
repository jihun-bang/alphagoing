import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/home_card_1.dart';
import '../widgets/home_notice.dart';
import '../widgets/main_banner_1.dart';

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
}
