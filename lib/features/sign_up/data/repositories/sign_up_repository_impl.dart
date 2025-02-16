import 'package:injectable/injectable.dart';

import '../../domain/repositories/sign_up_repository.dart';
import '../data_source/sign_up_remote_data_source.dart';

@Injectable(as: SignUpRepository)
class SignUpRepositoryImpl extends SignUpRepository {
  final SignUpDataSource _dataSource;

  SignUpRepositoryImpl(this._dataSource);
}
