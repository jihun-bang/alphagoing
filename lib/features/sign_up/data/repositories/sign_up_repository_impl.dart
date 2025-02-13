import 'package:alphagoing/features/sign_up/data/models/agreement_model.dart';
import 'package:alphagoing/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:alphagoing/service/auth/data/models/auth_token_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../domain/repositories/sign_up_repository.dart';
import '../data_source/sign_up_remote_data_source.dart';
import '../models/email_verify_request_model.dart';
import '../models/oauth_sign_up_request_model.dart';

@Injectable(as: SignUpRepository)
class SignUpRepositoryImpl extends SignUpRepository {
  final SignUpDataSource _dataSource;

  SignUpRepositoryImpl(this._dataSource);
}
