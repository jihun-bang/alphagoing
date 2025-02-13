import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel.signedIn({
    required int id,
    @Default('unknown') String nickname,
    required String email,
    @JsonKey(name: 'mobileNo') @Default('') String phoneNumber,
    @Default('') String affiliation,
    @Default('') String imageUrl,
  }) = SignedIn;

  const factory UserModel.signedOut([String? message]) = SignedOut;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  bool get isAuth => switch (this) {
        SignedIn() => true,
        SignedOut() => false,
      };
}
