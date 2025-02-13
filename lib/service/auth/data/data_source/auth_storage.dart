import '../../../../core/data/local/app_storage.dart';
import '../../../../core/data/local/storage_key.dart';
import '../models/auth_token_model.dart';

class AuthStorage {
  AuthStorage._();

  static String? get accessToken {
    return AppStorage.get(AppStorageKey.accessToken);
  }

  static Future<void> saveToken(AuthTokenModel model) async {
    await AppStorage.set(AppStorageKey.accessToken, model.accessToken);
  }

  static Future<void> reset() async {
    await AppStorage.remove(AppStorageKey.accessToken);
  }
}
