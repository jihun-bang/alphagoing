import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContentCreationView extends ConsumerStatefulWidget {
  const ContentCreationView({super.key});

  @override
  ConsumerState createState() => _ContentCreationViewState();
}

class _ContentCreationViewState extends ConsumerState<ContentCreationView> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(flex: 2, child: _buildSelectBlog),
                        SizedBox(width: 20),
                        Expanded(flex: 1, child: _buildStartDateTime),
                        SizedBox(width: 12),
                        Expanded(flex: 1, child: _buildStartTime),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(flex: 2, child: _buildHtml),
                        SizedBox(width: 20),
                        Expanded(flex: 1, child: _buildDailyPublishCount),
                        SizedBox(width: 12),
                        Expanded(flex: 1, child: _buildPublishCycle),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(child: SizedBox()),
                      SizedBox(width: 20),
                      Expanded(child: _buildCount),
                      SizedBox(width: 12),
                      Expanded(child: _buildConsumption),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            _buildConfirmButton,
          ],
        ),
      ),
    );
  }

  Widget get _buildSelectBlog {
    return AlphaGoingTextFormField(
      isButton: true,
      label: '블로그 선택',
      hintText: '블로그를 선택하세요',
    );
  }

  Widget get _buildStartDateTime {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2021),
          lastDate: DateTime(2050),
        );
      },
      child: AlphaGoingTextFormField(
        label: '시작 일자',
        isButton: true,
      ),
    );
  }

  Widget get _buildStartTime {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
      },
      child: AlphaGoingTextFormField(
        label: '시작 시간',
        isButton: true,
      ),
    );
  }

  Widget get _buildHtml {
    return AlphaGoingTextFormField(
      label: 'HTML 링크',
      hintText: 'HTML 링크를 입력하세요',
    );
  }

  Widget get _buildDailyPublishCount {
    return AlphaGoingTextFormField(
      label: '일 발행량',
      hintText: '일 발행량을 입력하세요',
    );
  }

  Widget get _buildPublishCycle {
    return AlphaGoingTextFormField(
      label: '발행 주기',
      hintText: '발행 주기를 입력하세요',
    );
  }

  Widget get _buildCount {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: ShapeDecoration(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        '선택된 수량: 10개',
        style: AppTextStyle.body14r142.copyWith(color: Colors.white),
      ),
    );
  }

  Widget get _buildConsumption {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: ShapeDecoration(
        color: AppColors.red600,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        '30CR 소모',
        style: AppTextStyle.body14r142.copyWith(color: Colors.white),
      ),
    );
  }

  Widget get _buildConfirmButton {
    return AlphaGoingButton(
      onPressed: () {},
      label: '본문 작성하기',
      width: 160,
      height: 200,
    );
  }
}
