// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedInImpl _$$SignedInImplFromJson(Map<String, dynamic> json) =>
    _$SignedInImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String? ?? 'unknown',
      email: json['email'] as String,
      phoneNumber: json['mobileNo'] as String? ?? '',
      affiliation: json['affiliation'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignedInImplToJson(_$SignedInImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'email': instance.email,
      'mobileNo': instance.phoneNumber,
      'affiliation': instance.affiliation,
      'imageUrl': instance.imageUrl,
      'runtimeType': instance.$type,
    };

_$SignedOutImpl _$$SignedOutImplFromJson(Map<String, dynamic> json) =>
    _$SignedOutImpl(
      json['message'] as String?,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignedOutImplToJson(_$SignedOutImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
