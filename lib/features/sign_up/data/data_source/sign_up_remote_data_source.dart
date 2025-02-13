import 'package:injectable/injectable.dart';

import '../../../../core/data/remote/network/dio_network_service.dart';

abstract class SignUpDataSource {}

@Injectable(as: SignUpDataSource)
class SignUpDataSourceImpl implements SignUpDataSource {
  final DioNetworkService _api;

  SignUpDataSourceImpl(this._api);
}
