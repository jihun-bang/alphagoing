import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token_model.freezed.dart';
part 'auth_token_model.g.dart';

@freezed
class AuthTokenModel with _$AuthTokenModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AuthTokenModel({
    required String accessToken,
  }) = _AuthTokenModel;

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenModelFromJson(json);
}
