import 'package:alphagoing/features/auto_posting/presentation/widgets/post_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/blog_list_view.dart';
import '../widgets/content_creation_view.dart';
import '../widgets/keyword_creation_view.dart';
import '../widgets/post_delete_button.dart';

class AutoPostingPage extends ConsumerStatefulWidget {
  const AutoPostingPage({super.key});

  @override
  ConsumerState<AutoPostingPage> createState() => _AutoPostingPageState();
}

class _AutoPostingPageState extends ConsumerState<AutoPostingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlogListView(),
        SizedBox(height: 24),
        KeywordCreationView(),
        SizedBox(height: 24),
        Align(
          alignment: Alignment.centerRight,
          child: PostDeleteButton(),
        ),
        SizedBox(height: 14),
        PostListView(),
        SizedBox(height: 24),
        ContentCreationView(),
      ],
    );
  }
}
