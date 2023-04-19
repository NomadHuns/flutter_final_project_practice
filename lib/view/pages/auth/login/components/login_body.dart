import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/pages/auth/login/components/login_logo.dart';
import 'package:flutter_final_project_practice/view/pages/auth/login/components/oauth_buttons.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50),
          child: LoginLogo(),
        ),
        const OauthButtons(),
        const SizedBox(height: 20),
        MyButton(funButton: () {}, text: "이메일 로그인", width: 230, height: 40),
        const SizedBox(height: 10),
        MyButton(funButton: () {}, text: "회원 가입", width: 230, height: 40),
      ],
    );
  }
}
