import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';

abstract class NoticeRepository {
  Future<Either<Failure, bool>> fetch();
}
