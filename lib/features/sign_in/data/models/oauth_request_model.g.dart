// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OauthRequestModelImpl _$$OauthRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OauthRequestModelImpl(
      provider: $enumDecode(_$OauthProviderTypeEnumMap, json['provider']),
      token: json['code'] as String,
    );

Map<String, dynamic> _$$OauthRequestModelImplToJson(
        _$OauthRequestModelImpl instance) =>
    <String, dynamic>{
      'provider': _$OauthProviderTypeEnumMap[instance.provider]!,
      'code': instance.token,
    };

const _$OauthProviderTypeEnumMap = {
  OauthProviderType.google: 'google',
  OauthProviderType.apple: 'apple',
  OauthProviderType.kakao: 'kakao',
};
