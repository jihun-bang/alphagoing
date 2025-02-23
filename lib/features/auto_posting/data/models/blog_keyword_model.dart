import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_keyword_model.freezed.dart';
part 'blog_keyword_model.g.dart';

@freezed
class BlogKeywordModel with _$BlogKeywordModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BlogKeywordModel({
    required String id,
    required String keyword,
    required DateTime createdAt,
  }) = _BlogKeywordModel;

  factory BlogKeywordModel.fromJson(Map<String, dynamic> json) =>
      _$BlogKeywordModelFromJson(json);
}
