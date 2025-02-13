import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../../../core/data/remote/network/dio_network_service.dart';
import '../../../../features/sign_in/data/models/oauth_request_model.dart';
import '../../../../features/sign_in/data/models/sign_in_request_model.dart';
import '../models/auth_token_model.dart';
import '../models/user_model.dart';
import 'auth_storage.dart';

abstract class AuthDataSource {
  Future<Either<Failure, AuthTokenModel>> signInWithEmail(
      {required SignInRequestModel model});

  Future<Either<Failure, UserModel>> signInWithOauth(
      {required OauthRequestModel model});
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final DioNetworkService _api;

  AuthDataSourceImpl(this._api);

  Future<void> _reset() async {
    await AuthStorage.reset();
    _api.updateHeader(
      {'Access-Token': null},
    );
  }

  Future<void> _updateToken(AuthTokenModel model) async {
    await AuthStorage.saveToken(model);
    _api.updateHeader(
      {'Access-Token': model.accessToken},
    );
  }

  @override
  Future<Either<Failure, AuthTokenModel>> signInWithEmail(
      {required SignInRequestModel model}) async {
    final response = await _api.post(
      'AuthEndpoint.signIn',
      data: model.toJson(),
    );
    return response.fold(
      (l) async {
        return Left(l);
      },
      (r) {
        return Right(AuthTokenModel(accessToken: ''));
      },
    );
  }

  @override
  Future<Either<Failure, UserModel>> signInWithOauth(
      {required OauthRequestModel model}) async {
    final response = await _api.get(
      '',
      queryParameters: {
        'code': model.token,
      },
    );
    return response.fold(
      (l) => Left(l),
      (r) => Right(UserModel.signedOut()),
    );
  }
}
