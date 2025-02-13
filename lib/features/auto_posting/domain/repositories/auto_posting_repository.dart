import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';

abstract class AutoPostingRepository {
  Future<Either<Failure, bool>> fetch();
}
