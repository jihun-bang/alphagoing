import 'package:alphagoing/features/sign_in/data/models/oauth_request_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_sign_up_request_model.freezed.dart';

part 'oauth_sign_up_request_model.g.dart';

@freezed
class OauthSignUpRequestModel with _$OauthSignUpRequestModel {
  const factory OauthSignUpRequestModel({
    @Default('') @JsonKey(name: 'username') String email,
    @Default('') String nickname,
    @Default('') String providerId,
    @Default(false) bool termsOfUse,
    @JsonKey(name: 'marketingConsent') @Default(false) bool marketingAgree,
    @JsonKey(includeToJson: false) @Default(false) bool termsAgree,
    @JsonKey(includeToJson: false) @Default(false) bool privacyAgree,
    @JsonKey(includeToJson: false) @Default(false) bool over14Agree,
    @JsonKey(includeToJson: false)
    @Default(OauthProviderType.google)
    OauthProviderType provider,
  }) = _OauthSignUpRequestModel;

  factory OauthSignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OauthSignUpRequestModelFromJson(json);
}
