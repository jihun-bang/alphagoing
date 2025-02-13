import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/event_repository.dart';
import '../data_source/event_data_source.dart';

@Injectable(as: EventRepository)
class EventRepositoryImpl extends EventRepository {
  final EventDataSource _dataSource;

  EventRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> fetch() {
    return _dataSource.fetch();
  }
}
