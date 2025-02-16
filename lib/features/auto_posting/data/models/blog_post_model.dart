import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_post_model.freezed.dart';
part 'blog_post_model.g.dart';

@freezed
class BlogPostSummaryModel with _$BlogPostSummaryModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BlogPostSummaryModel({
    required String title,
    required BlogPostStatus status,
    required BlogPostContentStatus contentStatus,
    DateTime? createdAt,
    DateTime? publishedAt,
  }) = _BlogPostSummaryModel;

  factory BlogPostSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$BlogPostSummaryModelFromJson(json);
}

enum BlogPostStatus {
  published('발행'),
  unpublished('미발행');

  final String label;

  const BlogPostStatus(this.label);
}

enum BlogPostContentStatus {
  none('생성 전'),
  created('생성 완료');

  final String label;

  const BlogPostContentStatus(this.label);
}
