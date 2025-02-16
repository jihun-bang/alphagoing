import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/features/notice/data/models/notice_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';

class NoticeListView extends ConsumerStatefulWidget {
  const NoticeListView({super.key});

  @override
  ConsumerState createState() => _NoticeListViewState();
}

class _NoticeListViewState extends ConsumerState<NoticeListView> {
  static List<NoticeModel> data = [
    NoticeModel(
      id: '1',
      number: 1,
      title: '서비스 업데이트 안내',
      createdAt: DateTime(2024, 1, 15),
      viewCount: 234,
    ),
    NoticeModel(
      id: '2',
      number: 2,
      title: '개인정보 처리방침 변경 안내',
      createdAt: DateTime(2024, 1, 15),
      viewCount: 156,
    ),
    NoticeModel(
      id: '3',
      number: 3,
      title: '2024년 서비스 운영 정책 안내',
      createdAt: DateTime(2024, 1, 12),
      viewCount: 349,
    ),
    NoticeModel(
      id: '4',
      number: 4,
      title: '시스템 점검 안내',
      createdAt: DateTime(2024, 1, 12),
      viewCount: 147,
    ),
    NoticeModel(
      id: '5',
      number: 5,
      title: '신규 기능 출시 안내',
      createdAt: DateTime(2024, 1, 11),
      viewCount: 262,
    ),
    NoticeModel(
      id: '6',
      number: 6,
      title: '연말 이벤트 당첨자 발표',
      createdAt: DateTime(2024, 1, 10),
      viewCount: 521,
    ),
    NoticeModel(
      id: '7',
      number: 7,
      title: '모바일 앱 업데이트 안내',
      createdAt: DateTime(2024, 1, 8),
      viewCount: 108,
    ),
    NoticeModel(
      id: '8',
      number: 8,
      title: '고객센터 운영시간 변경 안내',
      createdAt: DateTime(2024, 1, 7),
      viewCount: 234,
    ),
    NoticeModel(
      id: '9',
      number: 9,
      title: '결제 시스템 개선 안내',
      createdAt: DateTime(2024, 1, 6),
      viewCount: 304,
    ),
    NoticeModel(
      id: '10',
      number: 10,
      title: '신년 이벤트 안내',
      createdAt: DateTime(2024, 1, 5),
      viewCount: 112,
    ),
  ];

  final List<bool> _selectedRows = data.map((e) => false).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.all(24),
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(AppColors.gray150),
        headingTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        dataTextStyle: AppTextStyle.body16r150,
        showCheckboxColumn: false,
        showBottomBorder: true,
        columns: [
          _buildColumn('번호'),
          _buildColumn('제목'),
          _buildColumn('작성일'),
          _buildColumn('조회수'),
        ],
        rows: List.generate(data.length, (index) {
          final row = data[index];
          return DataRow(
            selected: _selectedRows[index],
            onSelectChanged: (selected) {},
            cells: [
              DataCell(Center(child: Text(row.number.toString()))),
              DataCell(Center(child: Text(row.title))),
              DataCell(Center(
                  child: Text(DateFormat('yyyy-MM-dd').format(row.createdAt)))),
              DataCell(Center(child: Text(row.viewCount.toString()))),
            ],
          );
        }),
      ),
    );
  }

  DataColumn _buildColumn(String title) {
    return DataColumn(
      headingRowAlignment: MainAxisAlignment.center,
      label: Text(
        title,
        style: AppTextStyle.title18b136,
      ),
    );
  }
}
