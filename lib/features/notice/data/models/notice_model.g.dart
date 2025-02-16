// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeModelImpl _$$NoticeModelImplFromJson(Map<String, dynamic> json) =>
    _$NoticeModelImpl(
      id: json['id'] as String,
      number: (json['number'] as num).toInt(),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      viewCount: (json['view_count'] as num).toInt(),
    );

Map<String, dynamic> _$$NoticeModelImplToJson(_$NoticeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'title': instance.title,
      'created_at': instance.createdAt.toIso8601String(),
      'view_count': instance.viewCount,
    };
