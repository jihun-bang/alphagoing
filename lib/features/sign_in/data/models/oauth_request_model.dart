import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_request_model.freezed.dart';
part 'oauth_request_model.g.dart';

@freezed
class OauthRequestModel with _$OauthRequestModel {
  const factory OauthRequestModel({
    required OauthProviderType provider,
    @JsonKey(name: 'code') required String token,
  }) = _OauthRequestModel;

  factory OauthRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OauthRequestModelFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum OauthProviderType {
  google,
  apple,
  kakao,
}
