import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verify_request_model.freezed.dart';
part 'email_verify_request_model.g.dart';

@freezed
class EmailVerifyRequestModel with _$EmailVerifyRequestModel {
  const factory EmailVerifyRequestModel({
    required String email,
    required String code,
  }) = _EmailVerifyRequestModel;

  factory EmailVerifyRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EmailVerifyRequestModelFromJson(json);
}
