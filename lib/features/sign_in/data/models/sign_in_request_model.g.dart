// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInRequestModelImpl _$$SignInRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInRequestModelImpl(
      email: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignInRequestModelImplToJson(
        _$SignInRequestModelImpl instance) =>
    <String, dynamic>{
      'username': instance.email,
      'password': instance.password,
    };
