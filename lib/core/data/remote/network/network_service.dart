import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../exception/exception.dart';

abstract class NetworkService {
  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<Failure, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<Failure, Response>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  Future<Either<Failure, Response>> put(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  Future<Either<Failure, Response>> delete(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  });

  Future<Either<Failure, Response>> patch(
    String endpoint, {
    Map<String, dynamic>? data,
  });
}
