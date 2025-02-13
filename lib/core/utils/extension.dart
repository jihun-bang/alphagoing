import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../data/exception/exception.dart';
import '../data/exception/server_code.dart';
import 'logger.dart';

extension IntExtensions on int {
  String toCommaString([String suffix = '']) {
    return NumberFormat('#,###$suffix').format(this);
  }
}

extension ResponseExtensions on Response {
  bool get isSuccess {
    try {
      return data['success'] == true;
    } catch (e) {
      return false;
    }
  }

  Either<Failure, T> converter<T extends dynamic>(
      T Function(dynamic data) converter) {
    try {
      final responseData = data['data'];
      final result = converter(responseData);
      return Right(result);
    } catch (e, stacktrace) {
      /// TODO : Add more specific error handling
      final code = data["code"];
      final failure = ServerFailure(
          code: ServerCode.internalServerError,
          message: data["message"] ?? '$e\n$stacktrace');
      Logger.e(failure);
      return Left(failure);
    }
  }
}

extension InvalidCodeExtension on ServerCode {
  String toMessage() {
    return switch (this) {
      _ => '요청을 실패했어요.\n다시 시도해주세요.',
    };
  }
}
