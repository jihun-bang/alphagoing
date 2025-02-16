import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/keyword_list_view.dart';
import '../widgets/keyword_search_view.dart';

class KeywordAnalyzerPage extends ConsumerStatefulWidget {
  const KeywordAnalyzerPage({super.key});

  @override
  ConsumerState<KeywordAnalyzerPage> createState() =>
      _KeywordAnalyzerPageState();
}

class _KeywordAnalyzerPageState extends ConsumerState<KeywordAnalyzerPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KeywordSearchView(),
        SizedBox(height: 24),
        KeywordListView(),
      ],
    );
  }
}
