import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../../../features/sign_in/data/models/oauth_request_model.dart';
import '../../../../features/sign_in/data/models/sign_in_request_model.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_source/auth_remote_data_source.dart';
import '../models/auth_token_model.dart';
import '../models/user_model.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, AuthTokenModel>> signInWithEmail(
      {required SignInRequestModel model}) {
    return _dataSource.signInWithEmail(model: model);
  }

  @override
  Future<Either<Failure, UserModel>> signInWithOauth(
      {required OauthRequestModel model}) {
    return _dataSource.signInWithOauth(model: model);
  }
}
