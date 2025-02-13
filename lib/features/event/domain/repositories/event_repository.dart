import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';

abstract class EventRepository {
  Future<Either<Failure, bool>> fetch();
}
