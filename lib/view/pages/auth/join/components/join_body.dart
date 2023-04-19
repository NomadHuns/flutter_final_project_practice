import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/auth/join/components/join_form.dart';

class JoinBody extends StatelessWidget {
  const JoinBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 100),
          JoinForm(),
        ],
      ),
    );
  }
}
