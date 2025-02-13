import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';
import '../../data/models/user_model.dart';

abstract class UserRepository {
  Future<Either<Failure, UserModel>> fetch();
}
