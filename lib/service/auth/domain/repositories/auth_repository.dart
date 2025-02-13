import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';
import '../../../../features/sign_in/data/models/oauth_request_model.dart';
import '../../../../features/sign_in/data/models/sign_in_request_model.dart';
import '../../data/models/auth_token_model.dart';
import '../../data/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthTokenModel>> signInWithEmail(
      {required SignInRequestModel model});

  Future<Either<Failure, UserModel>> signInWithOauth(
      {required OauthRequestModel model});
}
