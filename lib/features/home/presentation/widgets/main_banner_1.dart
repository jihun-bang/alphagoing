import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/svg_icon.dart';

class MainBanner1 extends StatelessWidget {
  const MainBanner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 708,
          height: 469,
          child: Stack(
            children: [
              Image.asset(
                'images/img_main_1.png',
                fit: BoxFit.cover,
                width: 708,
                height: 469,
              ),
              Container(
                width: 708,
                height: 469,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(71, 44, 162, 0.66),
                      Color.fromRGBO(71, 44, 162, 0.66),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 1,
                  color: Colors.white,
                  margin: const EdgeInsets.only(top: 54, bottom: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '알파GOING',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.6,
                          height: 1.25),
                    ),
                    SizedBox(
                      height: 84,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('온라인 자동화의 시작',
                            style: AppTextStyle.title20b140.copyWith(
                              color: Colors.white,
                            )),
                        SvgIcon(
                          icon: 'right_type1',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
