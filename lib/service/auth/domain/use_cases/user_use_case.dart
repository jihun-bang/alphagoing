import 'package:alphagoing/core/utils/extension.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/user_model.dart';
import '../repositories/user_repository.dart';

@injectable
class UserUseCase {
  final UserRepository _repository;

  UserUseCase(this._repository);

  Future<UserModel> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => SignedOut(l.code.toMessage()),
          (r) => r,
        ));
  }
}
