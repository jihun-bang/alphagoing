import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/keyword_analyzer_repository.dart';
import '../data_source/keyword_analyzer_data_source.dart';

@Injectable(as: KeywordAnalyzerRepository)
class KeywordAnalyzerRepositoryImpl extends KeywordAnalyzerRepository {
  final KeywordAnalyzerDataSource _dataSource;

  KeywordAnalyzerRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _dataSource.fetch();
  }
}
