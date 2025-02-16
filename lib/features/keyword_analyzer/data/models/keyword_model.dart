import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_model.freezed.dart';
part 'keyword_model.g.dart';

@freezed
class KeywordModel with _$KeywordModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory KeywordModel({
    /// 키워드
    required String keyword,

    /// 평균 검색수
    required int averageSearchVolume,

    /// PC 검색수
    required int pcSearchVolume,

    /// 모바일 검색수
    required int mobileSearchVolume,

    /// PC 검색률
    required double pcSearchRate,

    /// 모바일 검색률
    required double mobileSearchRate,

    /// PC 클릭수
    required int pcClickCount,

    /// 모바일 클릭 수
    required int mobileClickCount,

    /// PC 클릭률
    required double pcClickRate,

    /// 모바일 클릭률
    required double mobileClickRate,
  }) = _KeywordModel;

  factory KeywordModel.fromJson(Map<String, dynamic> json) =>
      _$KeywordModelFromJson(json);
}
