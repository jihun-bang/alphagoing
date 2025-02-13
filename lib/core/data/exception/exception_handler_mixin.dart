import 'dart:async';

import 'package:alphagoing/core/data/exception/server_code.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../utils/logger.dart';
import '../remote/network/network_service.dart';
import 'exception.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<Failure, Response>> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      final res = await handler();
      return switch (res.statusCode) {
        200 => Right(
            Response(
              statusCode: res.statusCode ?? 200,
              data: res.data,
              statusMessage: res.statusMessage,
              requestOptions: res.requestOptions,
              headers: res.headers,
            ),
          ),
        _ => Left(
            ServerFailure(
              code: ServerCode.internalServerError,
              message:
                  '[${res.statusCode}] ${res.data['message'] ?? 'Internal Error occurred'}',
            ),
          )
      };
    } catch (e) {
      final (code, message) = switch (e) {
        DioException e => (
            e.type.name.contains('Timeout')
                ? ServerCode.timeout
                : ServerCode.internalServerError,
            '[${e.response?.statusCode}] ${e.type.name.contains('Timeout') ? 'Timeout with ${e.type.name}.' : switch ((e).response?.statusCode) {
                502 || 503 => 'Server maintenance.',
                504 => 'Timeout with ${e.type.name}.',
                _ => e.response?.data['message'] ?? 'Internal Error occurred',
              }}',
          ),
        _ => (
            ServerCode.unknown,
            e.toString(),
          ),
      };
      final error = ServerFailure(
        code: code,
        message: message,
      );
      Logger.e(error);
      return Left(error);
    }
  }
}
