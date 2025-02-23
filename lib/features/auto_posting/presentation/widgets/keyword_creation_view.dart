import 'package:alphagoing/core/theme/colors.dart';
import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/core/widgets/text_form_field.dart';
import 'package:alphagoing/features/auto_posting/presentation/providers/keyword_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KeywordCreationView extends ConsumerStatefulWidget {
  const KeywordCreationView({super.key});

  @override
  ConsumerState createState() => _KeywordCreationViewState();
}

class _KeywordCreationViewState extends ConsumerState<KeywordCreationView> {
  String _keyword = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                _buildKeyword,
                SizedBox(width: 24),
                _buildCreateButton,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Align(
              alignment: Alignment.bottomRight,
              child: _buildInfo,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildKeyword {
    return SizedBox(
      width: 500,
      child: AlphaGoingTextFormField(
        hintText: '키워드를 입력하세요.',
        onChanged: (value) {
          _keyword = value;
        },
      ),
    );
  }

  Widget get _buildCreateButton {
    return AlphaGoingButton.primary(
      height: 40,
      width: 200,
      label: '제목 생성하기',
      onPressed: () async {
        await ref.read(keywordProvider.notifier).createTitles(_keyword);
      },
    );
  }

  Widget get _buildInfo {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '*제목 생성 시 3CR 차감',
          style: AppTextStyle.body14r142.copyWith(
            color: AppColors.red600,
          ),
        ),
        SizedBox(height: 2),
        Text(
          '키워드는 50개 고정 생성됩니다.',
          style: AppTextStyle.body14r142,
        ),
      ],
    );
  }
}
