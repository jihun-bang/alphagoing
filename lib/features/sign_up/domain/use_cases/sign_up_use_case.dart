import 'package:injectable/injectable.dart';

import '../repositories/sign_up_repository.dart';

@injectable
class SignUpUseCase {
  final SignUpRepository _repository;

  SignUpUseCase(this._repository);
}
