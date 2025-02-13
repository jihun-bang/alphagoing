import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/auto_posting_repository.dart';
import '../data_source/auto_posting_data_source.dart';

@Injectable(as: AutoPostingRepository)
class AutoPostingRepositoryImpl extends AutoPostingRepository {
  final AutoPostingDataSource _dataSource;

  AutoPostingRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _dataSource.fetch();
  }
}
