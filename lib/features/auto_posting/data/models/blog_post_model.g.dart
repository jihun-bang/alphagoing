// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogPostModelImpl _$$BlogPostModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogPostModelImpl(
      id: json['id'] as String,
      keywordId: json['keyword_id'] as String,
      title: json['title'] as String,
      content: json['content'] as Map<String, dynamic>,
      status: $enumDecode(_$BlogPostStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['created_at'] as String),
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$BlogPostModelImplToJson(_$BlogPostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keyword_id': instance.keywordId,
      'title': instance.title,
      'content': instance.content,
      'status': _$BlogPostStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
      'published_at': instance.publishedAt?.toIso8601String(),
    };

const _$BlogPostStatusEnumMap = {
  BlogPostStatus.published: 'PUBLISHED',
  BlogPostStatus.unpublished: 'UNPUBLISHED',
};
