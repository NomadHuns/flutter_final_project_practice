import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/pages/auth/join/components/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back_grounds/reguster.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: MyButton(
            funButton: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back_ios,
            iconColor: kDarkIconColor,
            iconSize: 30,
          ),
          title: const Text(
            '회원가입',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
        ),
        body: JoinBody(),
      ),
    );
  }
}
