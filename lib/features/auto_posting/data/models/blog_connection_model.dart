import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_connection_model.freezed.dart';
part 'blog_connection_model.g.dart';

@freezed
class BlogModel with _$BlogModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BlogModel({
    required String id,
    required String url,
    required String name,
    required BlogType blogType,
    required BlogConnectionStatus connectionStatus,
  }) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
}

enum BlogType {
  naver('네이버'),
  tistory('티스토리');

  final String label;

  const BlogType(this.label);
}

enum BlogConnectionStatus {
  connected('연동 완료'),
  failed('연동 실패'),
  none('');

  final String label;

  const BlogConnectionStatus(this.label);
}
