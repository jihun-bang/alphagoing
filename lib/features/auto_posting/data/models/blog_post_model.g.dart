// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogPostSummaryModelImpl _$$BlogPostSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BlogPostSummaryModelImpl(
      title: json['title'] as String,
      status: $enumDecode(_$BlogPostStatusEnumMap, json['status']),
      contentStatus:
          $enumDecode(_$BlogPostContentStatusEnumMap, json['content_status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$BlogPostSummaryModelImplToJson(
        _$BlogPostSummaryModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': _$BlogPostStatusEnumMap[instance.status]!,
      'content_status': _$BlogPostContentStatusEnumMap[instance.contentStatus]!,
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
