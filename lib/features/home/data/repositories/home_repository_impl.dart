import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/home_repository.dart';
import '../data_source/home_data_source.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _dataSource.fetch();
  }
}
