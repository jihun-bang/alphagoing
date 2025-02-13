import 'package:alphagoing/features/sign_in/data/models/oauth_request_model.dart';
import 'package:alphagoing/features/sign_in/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../../../core/utils/logger.dart';

class KakaoLogin extends StatelessWidget {
  final Function(OauthProviderType, String) handleLogin;

  const KakaoLogin({super.key, required this.handleLogin});

  Future<void> _handleLogin() async {
    try {
      if (await isKakaoTalkInstalled()) {
        await UserApi.instance.loginWithKakaoTalk();
      } else {
        await UserApi.instance.loginWithKakaoAccount();
      }
      final token = await TokenManagerProvider.instance.manager.getToken();
      if (token != null) {
        Logger.d('[Kakao] Token: ${token.accessToken}');
        handleLogin.call(OauthProviderType.kakao, token.accessToken);
      }
    } catch (error) {
      Logger.e(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginButton(
      label: '카카오로 시작하기',
      borderSide: BorderSide.none,
      activeColor: const Color(0xFFFEE500),
      onPressed: _handleLogin,
    );
  }
}
