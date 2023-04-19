import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/utils/my_validate_util.dart';
import 'package:flutter_final_project_practice/view/components/my_text_form_field.dart';

class EmailLoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  EmailLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextFormField(
            hint: 'Email',
            funValidator: validateEmail(),
            obscureText: false,
            controller: _email,
          ),
          const SizedBox(height: 30),
          MyTextFormField(
            hint: 'Password',
            funValidator: validatePassword(),
            obscureText: true,
            controller: _password,
          ),
        ],
      ),
    );
  }
}
