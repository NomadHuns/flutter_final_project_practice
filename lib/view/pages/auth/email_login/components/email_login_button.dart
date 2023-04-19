import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyButton(
      funButton: () {},
      text: '로그인',
      height: 50,
      width: 400,
      fontWeight: FontWeight.bold,
    );
  }
}
