import 'package:alphagoing/features/auto_posting/data/models/blog_keyword_model.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_post_model.dart';
import 'package:alphagoing/features/auto_posting/presentation/providers/keyword_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../providers/post_list_provider.dart';

class PostListView extends ConsumerStatefulWidget {
  const PostListView({super.key});

  @override
  ConsumerState createState() => _PostListViewState();
}

class _PostListViewState extends ConsumerState<PostListView> {
  bool _isAllSelected = false;
  BlogKeywordModel? _selectedKeyword;
  List<bool> _selectedRows = [];
  List<BlogPostModel> _posts = [];

  List<BlogKeywordModel> get _keywords => ref.watch(keywordProvider);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(keywordProvider.notifier).fetchKeywords();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(keywordProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildKeywords,
        Expanded(child: _buildTitles),
      ],
    );
  }

  Widget get _buildKeywords {
    return Container(
      color: Colors.white,
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(AppColors.primary),
        headingTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        dataTextStyle: AppTextStyle.body16r150,
        showCheckboxColumn: false,
        showBottomBorder: true,
        columns: [
          _buildColumn('키워드'),
        ],
        rows: List.generate(_keywords.length, (index) {
          final row = _keywords[index];
          return DataRow(
            selected: row == _selectedKeyword,
            onSelectChanged: (selected) async {
              setState(() {
                _selectedKeyword = row;
              });
              _posts = await ref
                  .watch(postListProvider(_selectedKeyword?.id ?? '').future);
              setState(() {
                _selectedRows = List.generate(_posts.length, (index) => false);
              });
            },
            cells: [
              DataCell(Text(row.keyword)),
            ],
          );
        }),
      ),
    );
  }

  Widget get _buildTitles {
    return Container(
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
          _buildColumn('생성일'),
          _buildColumn('발행일'),
          _buildColumn('상태'),
        ],
        rows: List.generate(_posts.length, (index) {
          final row = _posts[index];
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
