import 'package:freezed_annotation/freezed_annotation.dart';

import 'server_code.dart';

part 'exception.freezed.dart';
part 'exception.g.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.unknown([
    @Default(ServerCode.unknown) ServerCode code,
    @Default('Unknown error occurred.') String message,
  ]) = UnknownFailure;

  const factory Failure.server({
    required ServerCode code,
    required String message,
  }) = ServerFailure;

  const factory Failure.timeout({
    @Default(ServerCode.timeout) ServerCode code,
    required String message,
  }) = TimeoutFailure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
