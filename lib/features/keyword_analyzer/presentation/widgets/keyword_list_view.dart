import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../../data/models/keyword_model.dart';

class KeywordListView extends ConsumerStatefulWidget {
  const KeywordListView({super.key});

  @override
  ConsumerState createState() => _KeywordListViewState();
}

class _KeywordListViewState extends ConsumerState<KeywordListView> {
  static List<KeywordModel> data = List.generate(50, (index) {
    return KeywordModel(
      keyword: '키워드 $index',
      averageSearchVolume: 1000 + index,
      pcSearchVolume: 500 + index,
      mobileSearchVolume: 500 + index,
      pcSearchRate: (0.5 + index / 100),
      mobileSearchRate: 0.5 + index / 100,
      pcClickCount: 100 + index,
      mobileClickCount: 100 + index,
      pcClickRate: 0.1 + index / 100,
      mobileClickRate: 0.1 + index / 100,
    );
  });
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
          _buildColumn('키워드'),
          _buildColumn('평균 검색수'),
          _buildColumn('PC 검색수'),
          _buildColumn('모바일 검색수'),
          _buildColumn('PC 검색률'),
          _buildColumn('모바일 검색률'),
          _buildColumn('PC 클릭수'),
          _buildColumn('모바일 클릭 수'),
          _buildColumn('PC 클릭률'),
          _buildColumn('모바일 클릭률'),
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
              DataCell(Text(row.keyword)),
              DataCell(Text(row.averageSearchVolume.toString())),
              DataCell(Text(row.pcSearchVolume.toString())),
              DataCell(Text(row.mobileSearchVolume.toString())),
              DataCell(Text(row.pcSearchRate.toStringAsFixed(2))),
              DataCell(Text(row.mobileSearchRate.toStringAsFixed(2))),
              DataCell(Text(row.pcClickCount.toString())),
              DataCell(Text(row.mobileClickCount.toString())),
              DataCell(Text(row.pcClickRate.toStringAsFixed(2))),
              DataCell(Text(row.mobileClickRate.toStringAsFixed(2))),
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
        style: AppTextStyle.body12b136,
      ),
    );
  }
}
