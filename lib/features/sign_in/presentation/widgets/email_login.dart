import 'package:alphagoing/core/routes/routes.dart';
import 'package:alphagoing/features/sign_in/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';

class EmailLogin extends StatelessWidget {
  const EmailLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginButton(
      label: '로그인',
      onPressed: () {},
    );
  }
}
