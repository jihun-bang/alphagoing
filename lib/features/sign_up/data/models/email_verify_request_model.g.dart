// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_verify_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailVerifyRequestModelImpl _$$EmailVerifyRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailVerifyRequestModelImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$EmailVerifyRequestModelImplToJson(
        _$EmailVerifyRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
