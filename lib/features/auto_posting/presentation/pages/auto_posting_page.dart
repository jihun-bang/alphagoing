import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AutoPostingPage extends ConsumerStatefulWidget {
  const AutoPostingPage({super.key});

  @override
  ConsumerState<AutoPostingPage> createState() => _AutoPostingPageState();
}

class _AutoPostingPageState extends ConsumerState<AutoPostingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              '자동 포스팅',
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
