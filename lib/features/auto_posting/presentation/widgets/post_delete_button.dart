import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDeleteButton extends ConsumerWidget {
  const PostDeleteButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlphaGoingButton.red(
      width: 100,
      label: '삭제하기',
      onPressed: () {},
    );
  }
}
