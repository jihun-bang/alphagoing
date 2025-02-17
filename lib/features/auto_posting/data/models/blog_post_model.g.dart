// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogPostModelImpl _$$BlogPostModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogPostModelImpl(
      id: json['id'] as String,
      sessionId: json['session_id'] as String,
      title: json['title'] as String,
      content: json['content'] as Map<String, dynamic>,
      status: $enumDecode(_$BlogPostStatusEnumMap, json['status']),
      contentStatus: $enumDecodeNullable(
          _$BlogPostContentStatusEnumMap, json['content_status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$BlogPostModelImplToJson(_$BlogPostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session_id': instance.sessionId,
      'title': instance.title,
      'content': instance.content,
      'status': _$BlogPostStatusEnumMap[instance.status]!,
      'content_status': _$BlogPostContentStatusEnumMap[instance.contentStatus],
      'created_at': instance.createdAt?.toIso8601String(),
      'published_at': instance.publishedAt?.toIso8601String(),
    };

const _$BlogPostStatusEnumMap = {
  BlogPostStatus.published: 'published',
  BlogPostStatus.unpublished: 'unpublished',
};

const _$BlogPostContentStatusEnumMap = {
  BlogPostContentStatus.none: 'none',
  BlogPostContentStatus.created: 'created',
};
