import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_model.freezed.dart';
part 'sign_up_request_model.g.dart';

@freezed
class SignUpRequestModel with _$SignUpRequestModel {
  const factory SignUpRequestModel({
    @JsonKey(name: 'username') @Default('') String userName,
    @Default('') String password,
    @JsonKey(includeToJson: false) @Default('') String confirmPassword,
    @Default('') String nickname,
    @Default(false) bool termsOfUse,
    @JsonKey(name: 'marketingConsent') @Default(false) bool marketingAgree,
    @JsonKey(includeToJson: false) @Default(false) bool termsAgree,
    @JsonKey(includeToJson: false) @Default(false) bool privacyAgree,
    @JsonKey(includeToJson: false) @Default(false) bool over14Agree,
  }) = _SignUpRequestModel;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);
}
