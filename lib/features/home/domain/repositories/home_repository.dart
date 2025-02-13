import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';

abstract class HomeRepository {
  Future<Either<Failure, bool>> fetch();
}
