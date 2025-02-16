import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../../data/models/blog_post_model.dart';

class PostListView extends ConsumerStatefulWidget {
  const PostListView({super.key});

  @override
  ConsumerState createState() => _PostListViewState();
}

class _PostListViewState extends ConsumerState<PostListView> {
  static List<BlogPostSummaryModel> data = [
    BlogPostSummaryModel(
      title: '파이썬관련 글 모음',
      contentStatus: BlogPostContentStatus.none,
      status: BlogPostStatus.unpublished,
    ),
    BlogPostSummaryModel(
      title: '파이썬 개발자가 되기 위한 학습 로드맵',
      contentStatus: BlogPostContentStatus.none,
      status: BlogPostStatus.unpublished,
    ),
    BlogPostSummaryModel(
      title: '파이썬으로 시작하는 데이터 분석 입문',
      contentStatus: BlogPostContentStatus.created,
      status: BlogPostStatus.unpublished,
      createdAt: DateTime.now(),
    ),
    BlogPostSummaryModel(
      title: '파이썬 프로그래밍의 핵심 개념 총정리',
      contentStatus: BlogPostContentStatus.none,
      status: BlogPostStatus.unpublished,
    ),
    BlogPostSummaryModel(
      title: '파이썬 자동화 스크립트 작성법',
      contentStatus: BlogPostContentStatus.created,
      status: BlogPostStatus.published,
      createdAt: DateTime.now(),
      publishedAt: DateTime.now(),
    ),
  ];
  bool _isAllSelected = false;
  final List<bool> _selectedRows = data.map((e) => false).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(AppColors.primary),
        headingTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        dataTextStyle: AppTextStyle.body16r150,
        showCheckboxColumn: false,
        showBottomBorder: true,
        columns: [
          DataColumn(
            headingRowAlignment: MainAxisAlignment.center,
            label: Checkbox(
              activeColor: Colors.white,
              checkColor: AppColors.primary,
              value: _isAllSelected,
              onChanged: (value) {
                setState(() {
                  _isAllSelected = value ?? false;
                  for (int i = 0; i < _selectedRows.length; i++) {
                    _selectedRows[i] = _isAllSelected;
                  }
                });
              },
            ),
          ),
          _buildColumn('제목'),
          _buildColumn('분류'),
          _buildColumn('생성일'),
          _buildColumn('발행일'),
          _buildColumn('상태'),
        ],
        rows: List.generate(data.length, (index) {
          final row = data[index];
          return DataRow(
            selected: _selectedRows[index],
            onSelectChanged: (selected) {
              setState(() {
                _selectedRows[index] = selected ?? false;
                _isAllSelected =
                    _selectedRows.every((element) => element == true);
              });
            },
            cells: [
              DataCell(
                Center(
                  child: Checkbox(
                    value: _selectedRows[index],
                    onChanged: (value) {
                      setState(() {
                        _selectedRows[index] = value ?? false;
                        _isAllSelected =
                            _selectedRows.every((element) => element == true);
                      });
                    },
                  ),
                ),
              ),
              DataCell(Text(row.title)),
              DataCell(Center(child: Text(row.contentStatus.label))),
              DataCell(Center(
                child: Text(row.createdAt != null
                    ? DateFormat('yyyy-MM-dd').format(row.createdAt!)
                    : ''),
              )),
              DataCell(Center(
                child: Text(row.publishedAt != null
                    ? DateFormat('yyyy-MM-dd').format(row.publishedAt!)
                    : ''),
              )),
              DataCell(Center(child: Text(row.status.label))),
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
