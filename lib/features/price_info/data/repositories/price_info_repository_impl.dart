import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/price_info_repository.dart';
import '../data_source/price_info_data_source.dart';

@Injectable(as: PriceInfoRepository)
class PriceInfoRepositoryImpl extends PriceInfoRepository {
  final PriceInfoDataSource _dataSource;

  PriceInfoRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _dataSource.fetch();
  }
}
