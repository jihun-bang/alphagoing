import 'package:alphagoing/core/data/exception/server_code.dart';
import 'package:alphagoing/core/utils/extension.dart';
import 'package:alphagoing/service/auth/domain/use_cases/user_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../../../features/sign_in/data/models/oauth_request_model.dart';
import '../../../../features/sign_in/data/models/sign_in_request_model.dart';
import '../../data/models/user_model.dart';
import '../repositories/auth_repository.dart';

@injectable
class AuthUseCase {
  late final AuthRepository _authRepo;
  late final UserUseCase _userUseCase;

  AuthUseCase(this._authRepo, this._userUseCase);

  Future<UserModel> signInWithEmail({required SignInRequestModel model}) async {
    return _authRepo.signInWithEmail(model: model).then(
          (value) => value.fold(
            (l) {
              return UserModel.signedOut(
                l.code == ServerCode.unknown
                    ? '아이디 또는 비밀번호가 일치하지 않습니다.'
                    : l.code.toMessage(),
              );
            },
            (r) async {
              return _userUseCase.fetch();
            },
          ),
        );
  }

  Future<dynamic> signInWithOauth({
    required OauthRequestModel model,
  }) async {
    return _authRepo.signInWithOauth(model: model).then(
          (value) => value.fold(
            (l) => UserModel.signedOut(l.code.toMessage()),
            (r) {
              if (r == null) {
                return _userUseCase.fetch();
              } else {
                return r;
              }
            },
          ),
        );
  }
}
