import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/button/button.dart';
import '../../../../core/widgets/text_form_field.dart';

class KeywordSearchView extends ConsumerStatefulWidget {
  const KeywordSearchView({super.key});

  @override
  ConsumerState createState() => _KeywordSearchViewState();
}

class _KeywordSearchViewState extends ConsumerState<KeywordSearchView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildKeyword,
        SizedBox(width: 20),
        _buildCreateButton,
      ],
    );
  }

  Widget get _buildKeyword {
    return SizedBox(
      width: 500,
      child: AlphaGoingTextFormField(
        hintText: '키워드를 입력하세요.',
      ),
    );
  }

  Widget get _buildCreateButton {
    return AlphaGoingButton.primary(
      height: 40,
      width: 100,
      label: '검색하기',
      onPressed: () {},
    );
  }
}
