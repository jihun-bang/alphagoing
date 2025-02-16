import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/widgets/dialogs/coming_soon_toast.dart';
import 'package:alphagoing/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../data/models/oauth_request_model.dart';
import '../providers/sign_in_request_provider.dart';
import '../widgets/email_login.dart';
import '../widgets/google_login.dart';
import '../widgets/kakao_login.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({
    super.key,
  });

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  Future<void> _handleLogin(OauthProviderType provider, String token) async {
    showComingSoon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: Color(0x00000000),
                    blurRadius: 0,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x00000000),
                    blurRadius: 0,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                    spreadRadius: -1,
                  ),
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: -2,
                  )
                ],
              ),
              width: 300,
              height: 550,
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Text('로그인', style: AppTextStyle.title26b130),
                  Spacer(),
                  _buildEmail,
                  const SizedBox(height: 16),
                  _buildPassword,
                  const SizedBox(height: 16),
                  EmailLogin(),
                  const SizedBox(height: 32),
                  _buildLabel,
                  const SizedBox(height: 32),
                  KakaoLogin(
                    handleLogin: _handleLogin,
                  ),
                  const SizedBox(height: 16),
                  GoggleLogin(
                    handleLogin: _handleLogin,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _buildTitle {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgIcon(icon: 'bi'),
            SizedBox(width: 15.48),
            SvgIcon(
              icon: 'logo',
              color: AppColors.gray850,
              width: 167.04,
              height: 44,
            ),
          ],
        ),
        SizedBox(height: 12),
      ],
    );
  }

  Widget get _buildEmail {
    return AlphaGoingTextFormField(
      label: '이메일',
      hintText: 'my@email.com',
      onChanged: (value) {
        setState(() {
          ref.read(signInRequestProvider.notifier).updateEmail(value);
        });
      },
    );
  }

  Widget get _buildPassword {
    return AlphaGoingTextFormField.password(
      label: '비밀번호',
      hintText: '비밀번호',
      onChanged: (value) {
        setState(() {
          ref.read(signInRequestProvider.notifier).updatePassword(value);
        });
      },
    );
  }

  Widget get _buildLabel {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.gray250,
          ),
        ),
        const SizedBox(width: 11),
        Text('로그인/회원가입',
            style: AppTextStyle.body14r142.copyWith(color: AppColors.gray600)),
        const SizedBox(width: 11),
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.gray250,
          ),
        ),
      ],
    );
  }
}
