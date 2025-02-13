import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';

abstract class PriceInfoRepository {
  Future<Either<Failure, bool>> fetch();
}
