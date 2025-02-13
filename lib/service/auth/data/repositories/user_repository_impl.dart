import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_source/user_remote_data_source.dart';
import '../models/user_model.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, UserModel>> fetch() {
    return _dataSource.fetch();
  }
}
