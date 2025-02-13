import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../configs/app_configs.dart';
import '../../exception/exception.dart';
import '../../exception/exception_handler_mixin.dart';
import 'network_service.dart';

@singleton
class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  late final Dio dio;

  DioNetworkService() {
    dio = Dio();
    dio.options = dioBaseOptions;
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: AppConfigs.baseUrl,
        headers: headers,
        connectTimeout: const Duration(milliseconds: 10000),
        sendTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 10000),
      );

  @override
  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...data, ...headers};
    dio.options.headers = header;
    return header;
  }

  @override
  Future<Either<Failure, Response>> post(
    String endpoint, {
    FormData? formData,
    Map<String, dynamic>? data,
    Options? options,
  }) {
    final res = handleException(
      () => (dio..options = dio.options).post(
        endpoint,
        data: formData ?? data,
        options: options,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Failure, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) {
    final res = handleException(
      () => (dio..options = dio.options).get(
        endpoint,
        queryParameters: queryParameters,
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Failure, Response>> put(
    String endpoint, {
    Map<String, dynamic>? data,
  }) {
    final res = handleException(
      () => (dio..options = dio.options).put(
        endpoint,
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Failure, Response>> delete(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
  }) {
    final res = handleException(
      () => (dio..options = dio.options).delete(
        endpoint,
        queryParameters: queryParameters,
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Failure, Response>> patch(
    String endpoint, {
    Map<String, dynamic>? data,
  }) {
    final res = handleException(
      () => (dio..options = dio.options).patch(
        endpoint,
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }
}
