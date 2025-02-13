import 'package:alphagoing/core/data/exception/server_code.dart';
import 'package:alphagoing/core/utils/extension.dart';
import 'package:alphagoing/features/sign_up/data/models/email_verify_request_model.dart';
import 'package:alphagoing/features/sign_up/data/models/oauth_sign_up_request_model.dart';
import 'package:alphagoing/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/agreement_model.dart';
import '../repositories/sign_up_repository.dart';

@injectable
class SignUpUseCase {
  final SignUpRepository _repository;

  SignUpUseCase(this._repository);
}
