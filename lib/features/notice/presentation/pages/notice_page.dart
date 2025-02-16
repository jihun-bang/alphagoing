import 'package:alphagoing/core/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/notice_list_view.dart';

class NoticePage extends ConsumerStatefulWidget {
  const NoticePage({super.key});

  @override
  ConsumerState<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends ConsumerState<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(50),
      decoration: ShapeDecoration(
        color: Color(0xFF8371EC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '공지사항',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              height: 1.4,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          AlphagoingSearchField(
            hintText: '검색어를 입력하세요.',
          ),
          SizedBox(height: 20),
          NoticeListView(),
        ],
      ),
    );
  }
}
