import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../../../core/data/remote/network/dio_network_service.dart';

abstract class EventDataSource {
  Future<Either<Failure, bool>> fetch();
}

@Injectable(as: EventDataSource)
class EventDataSourceImpl implements EventDataSource {
  final DioNetworkService _api;

  EventDataSourceImpl(this._api);

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
