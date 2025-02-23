// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_keyword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogKeywordModelImpl _$$BlogKeywordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BlogKeywordModelImpl(
      id: json['id'] as String,
      keyword: json['keyword'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$BlogKeywordModelImplToJson(
        _$BlogKeywordModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keyword': instance.keyword,
      'created_at': instance.createdAt.toIso8601String(),
    };
