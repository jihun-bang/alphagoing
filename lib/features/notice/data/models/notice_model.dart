import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory NoticeModel({
    /// 아이디
    required String id,

    /// 번호
    required int number,

    /// 제목
    required String title,

    /// 작성일
    required DateTime createdAt,

    /// 조회수
    required int viewCount,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);
}
