import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verify_state.freezed.dart';

@freezed
abstract class EmailVerifyState with _$EmailVerifyState {
  const factory EmailVerifyState.initial() = VerifyInitial;

  const factory EmailVerifyState.loading() = VerifyLoading;

  const factory EmailVerifyState.sendFailure(String error) = SendFailure;

  const factory EmailVerifyState.ready() = VerifyReady;

  const factory EmailVerifyState.failure(String error) = VerifyFailure;

  const factory EmailVerifyState.success() = VerifySuccess;
}
