// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestModelImpl _$$SignUpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestModelImpl(
      userName: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      confirmPassword: json['confirmPassword'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
      termsOfUse: json['termsOfUse'] as bool? ?? false,
      marketingAgree: json['marketingConsent'] as bool? ?? false,
      termsAgree: json['termsAgree'] as bool? ?? false,
      privacyAgree: json['privacyAgree'] as bool? ?? false,
      over14Agree: json['over14Agree'] as bool? ?? false,
    );

Map<String, dynamic> _$$SignUpRequestModelImplToJson(
        _$SignUpRequestModelImpl instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'password': instance.password,
      'nickname': instance.nickname,
      'termsOfUse': instance.termsOfUse,
      'marketingConsent': instance.marketingAgree,
    };
