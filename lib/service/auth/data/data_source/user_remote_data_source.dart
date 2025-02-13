import 'package:alphagoing/core/utils/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../../../core/data/remote/network/dio_network_service.dart';
import '../models/user_model.dart';

abstract class UserDataSource {
  Future<Either<Failure, UserModel>> fetch();
}

@Injectable(as: UserDataSource)
class UserDataSourceImpl implements UserDataSource {
  final DioNetworkService _api;

  UserDataSourceImpl(this._api);

  @override
  Future<Either<Failure, SignedIn>> fetch() async {
    final response = await _api.get('UserEndpoint.user');
    return response.fold(
      (l) => Left(l),
      (r) => r.converter((data) => SignedIn.fromJson(data)),
    );
  }
}
