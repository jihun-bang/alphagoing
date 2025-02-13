import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';

abstract class KeywordAnalyzerRepository {
  Future<Either<Failure, bool>> fetch();
}
