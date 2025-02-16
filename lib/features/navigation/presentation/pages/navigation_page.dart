import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/routes.dart';

class NavigationPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const NavigationPage({
    super.key,
    required this.navigationShell,
  });

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  static final List<String> titles = [
    'GOING!',
    '공지사항',
    '이벤트',
    '가격안내',
    '키워드 분석기',
    '자동 포스팅',
    'Login',
    '회원가입',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNavigationBar,
            SizedBox(height: 40),
            widget.navigationShell,
          ],
        ),
      ),
    );
  }

  Widget get _buildNavigationBar {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: List.generate(
            6,
            (index) => _buildNavItem(index: index),
          ),
        ),
        Row(
          children: [
            _buildNavItem(index: 6),
            _buildNavItem(index: 7),
          ],
        ),
      ],
    );
  }

  Widget _buildNavItem({required int index}) {
    final isHome = index == 0;
    final isRight = index > 5;
    final isSelected = index == widget.navigationShell.currentIndex;
    final label = titles[index];
    return Padding(
      padding: EdgeInsets.only(right: isHome ? 62 : 10, top: 6),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          if (!isSelected) {
            switch (index) {
              case 0:
                const HomeRoute().go(context);
              case 1:
                const NoticeRoute().go(context);
              case 2:
                const EventRoute().go(context);
              case 3:
                const PriceInfoRoute().go(context);
              case 4:
                const KeywordAnalyzerRoute().go(context);
              case 5:
                const AutoPostingRoute().go(context);
              case 6:
                const SignInRoute().push(context);
              case 7:
                const SignUpRoute().push(context);
            }
          }
        },
        child: Ink(
          height: 53,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: ShapeDecoration(
            color: isHome || index == 6
                ? Color(0xFF0D0D0D)
                : (isSelected || index == 7 ? AppColors.primary : Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: AppTextStyle.body16sb140.copyWith(
                color: isSelected || isHome || isRight
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
