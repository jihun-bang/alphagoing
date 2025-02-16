import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PriceInfoPage extends ConsumerStatefulWidget {
  const PriceInfoPage({super.key});

  @override
  ConsumerState<PriceInfoPage> createState() => _PriceInfoPageState();
}

class _PriceInfoPageState extends ConsumerState<PriceInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '가격안내',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
