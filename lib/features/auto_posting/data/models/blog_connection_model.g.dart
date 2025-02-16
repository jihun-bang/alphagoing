// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_connection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogModelImpl _$$BlogModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogModelImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      blogType: $enumDecode(_$BlogTypeEnumMap, json['blog_type']),
      connectionStatus:
          $enumDecode(_$BlogConnectionStatusEnumMap, json['connection_status']),
    );

Map<String, dynamic> _$$BlogModelImplToJson(_$BlogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'blog_type': _$BlogTypeEnumMap[instance.blogType]!,
      'connection_status':
          _$BlogConnectionStatusEnumMap[instance.connectionStatus]!,
    };

const _$BlogTypeEnumMap = {
  BlogType.naver: 'naver',
  BlogType.tistory: 'tistory',
};

const _$BlogConnectionStatusEnumMap = {
  BlogConnectionStatus.connected: 'connected',
  BlogConnectionStatus.failed: 'failed',
  BlogConnectionStatus.none: 'none',
};
