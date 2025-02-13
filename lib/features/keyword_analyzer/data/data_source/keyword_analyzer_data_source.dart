import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../../../core/data/remote/network/dio_network_service.dart';

abstract class KeywordAnalyzerDataSource {
  Future<Either<Failure, bool>> fetch();
}

@Injectable(as: KeywordAnalyzerDataSource)
class KeywordAnalyzerDataSourceImpl implements KeywordAnalyzerDataSource {
  final DioNetworkService _api;

  KeywordAnalyzerDataSourceImpl(this._api);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _api.get('test').then((response) {
      return response.fold(
        (l) => Left(l),
        (r) => Right(true),
      );
    });
  }
}
