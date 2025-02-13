// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OauthSignUpRequestModelImpl _$$OauthSignUpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OauthSignUpRequestModelImpl(
      email: json['username'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
      providerId: json['providerId'] as String? ?? '',
      termsOfUse: json['termsOfUse'] as bool? ?? false,
      marketingAgree: json['marketingConsent'] as bool? ?? false,
      termsAgree: json['termsAgree'] as bool? ?? false,
      privacyAgree: json['privacyAgree'] as bool? ?? false,
      over14Agree: json['over14Agree'] as bool? ?? false,
      provider:
          $enumDecodeNullable(_$OauthProviderTypeEnumMap, json['provider']) ??
              OauthProviderType.google,
    );

Map<String, dynamic> _$$OauthSignUpRequestModelImplToJson(
        _$OauthSignUpRequestModelImpl instance) =>
    <String, dynamic>{
      'username': instance.email,
      'nickname': instance.nickname,
      'providerId': instance.providerId,
      'termsOfUse': instance.termsOfUse,
      'marketingConsent': instance.marketingAgree,
    };

const _$OauthProviderTypeEnumMap = {
  OauthProviderType.google: 'google',
  OauthProviderType.apple: 'apple',
  OauthProviderType.kakao: 'kakao',
};
