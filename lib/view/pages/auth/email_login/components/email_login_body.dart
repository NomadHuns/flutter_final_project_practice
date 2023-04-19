import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/utils/my_validate_util.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/components/my_text_form_field.dart';
import 'package:flutter_final_project_practice/view/pages/auth/email_login/components/email_login_button.dart';
import 'package:flutter_final_project_practice/view/pages/auth/email_login/components/email_login_form.dart';

class EmailLoginBody extends StatelessWidget {


  EmailLoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 100),
          EmailLoginForm(),
          const SizedBox(height: 300),
          const EmailLoginButton(),
        ],
      ),
    );
  }
}
