import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/notice_repository.dart';
import '../data_source/notice_data_source.dart';

@Injectable(as: NoticeRepository)
class NoticeRepositoryImpl extends NoticeRepository {
  final NoticeDataSource _dataSource;

  NoticeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _dataSource.fetch();
  }
}
