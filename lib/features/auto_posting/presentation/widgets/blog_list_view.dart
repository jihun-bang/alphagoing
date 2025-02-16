import 'package:alphagoing/core/widgets/button/button.dart';
import 'package:alphagoing/core/widgets/image_icon.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_connection_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';

class BlogListView extends ConsumerStatefulWidget {
  const BlogListView({super.key});

  @override
  ConsumerState createState() => _BlogListViewState();
}

class _BlogListViewState extends ConsumerState<BlogListView> {
  static List<BlogModel> data = [
    BlogModel(
      id: '',
      url: 'https://blog.naver.com/alphagoing',
      name: '',
      blogType: BlogType.naver,
      connectionStatus: BlogConnectionStatus.connected,
    ),
    BlogModel(
      id: '',
      url: 'https://blog.naver.com/alphagoing',
      name: '유튜브 알파GOGOGO',
      blogType: BlogType.naver,
      connectionStatus: BlogConnectionStatus.failed,
    ),
    BlogModel(
      id: '',
      url: 'https://blog.naver.com/alphagoing',
      name: '알파고 네이버',
      blogType: BlogType.naver,
      connectionStatus: BlogConnectionStatus.none,
    ),
    BlogModel(
      id: '',
      url: 'https://blog.naver.com/alphagoing',
      name: '알파고 티스토리',
      blogType: BlogType.tistory,
      connectionStatus: BlogConnectionStatus.connected,
    ),
    BlogModel(
      id: '',
      url: 'https://blog.naver.com/alphagoing',
      name: '레오 티스토리',
      blogType: BlogType.tistory,
      connectionStatus: BlogConnectionStatus.none,
    ),
  ];
  final List<bool> _selectedRows = data.map((e) => false).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '블로그 연동',
            style: AppTextStyle.head28b136.copyWith(
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              headingRowColor: WidgetStateProperty.all(AppColors.primary),
              headingTextStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              dataTextStyle: AppTextStyle.body16r150,
              showCheckboxColumn: false,
              showBottomBorder: true,
              columns: [
                _buildColumn('URL'),
                _buildColumn('블로그 이름'),
                _buildColumn('종류'),
                _buildColumn('연결 상태'),
              ],
              rows: List.generate(data.length, (index) {
                final row = data[index];
                return DataRow(
                  selected: _selectedRows[index],
                  onSelectChanged: (selected) {},
                  cells: [
                    DataCell(Text(row.url)),
                    DataCell(Center(child: Text(row.name))),
                    DataCell(Center(child: Text(row.blogType.label))),
                    DataCell(Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (row.connectionStatus != BlogConnectionStatus.none)
                            ImgIcon(
                              icon:
                                  'connection_${row.connectionStatus == BlogConnectionStatus.connected ? 'success' : 'failed'}',
                              width: 30,
                              height: 30,
                            )
                          else
                            SizedBox(width: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(row.connectionStatus.label),
                          ),
                        ],
                      ),
                    )),
                  ],
                );
              }),
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildAddButton,
              SizedBox(width: 24),
              _buildDeleteButton,
            ],
          )
        ],
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

  Widget get _buildAddButton {
    return AlphaGoingButton.primary(
      onPressed: () {},
      label: '추가하기',
      width: 100,
    );
  }

  Widget get _buildDeleteButton {
    return AlphaGoingButton.red(
      onPressed: () {},
      label: '삭제하기',
      width: 100,
    );
  }
}
