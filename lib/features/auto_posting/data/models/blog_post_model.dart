import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_post_model.freezed.dart';
part 'blog_post_model.g.dart';

@freezed
class BlogPostModel with _$BlogPostModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BlogPostModel({
    required String id,
    required String sessionId,
    required String title,
    required Map<String, dynamic> content,
    required BlogPostStatus status,
    BlogPostContentStatus? contentStatus,
    DateTime? createdAt,
    DateTime? publishedAt,
  }) = _BlogPostModel;

  factory BlogPostModel.fromJson(Map<String, dynamic> json) =>
      _$BlogPostModelFromJson(json);
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
