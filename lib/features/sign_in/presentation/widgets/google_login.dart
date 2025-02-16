import 'package:alphagoing/features/sign_in/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/utils/logger.dart';
import '../../data/models/oauth_request_model.dart';

class GoggleLogin extends StatefulWidget {
  final Function(OauthProviderType, String) handleLogin;

  const GoggleLogin({
    super.key,
    required this.handleLogin,
  });

  @override
  State<GoggleLogin> createState() => _GoggleLoginState();
}

class _GoggleLoginState extends State<GoggleLogin> {
  Future<void> _handleLogin() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      await googleSignIn.signOut();
      final account = await googleSignIn.signIn();
      final token = (await account?.authentication)?.accessToken;
      if (token != null) {
        Logger.d('[Google]\n$account\naccessToken: $token');
        widget.handleLogin.call(OauthProviderType.google, token);
      }
    } catch (error) {
      Logger.e(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginButton(
      label: '구글로 시작하기',
      onPressed: _handleLogin,
    );
  }
}
