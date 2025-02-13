import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KeywordAnalyzerPage extends ConsumerStatefulWidget {
  const KeywordAnalyzerPage({super.key});

  @override
  ConsumerState<KeywordAnalyzerPage> createState() =>
      _KeywordAnalyzerPageState();
}

class _KeywordAnalyzerPageState extends ConsumerState<KeywordAnalyzerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              '키워드 분석',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
