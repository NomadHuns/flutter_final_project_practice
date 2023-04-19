
import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/auth/email_login/email_login_page.dart';
import 'package:flutter_final_project_practice/view/pages/auth/join/join_page.dart';
import 'package:flutter_final_project_practice/view/pages/auth/login/login_page.dart';

class MyRoute {

  static String loginPage = "/login";
  static String emailLoginPage = "/login/email";
  static String joinPage = "/join";

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.loginPage: (context) => LoginPage(),
    MyRoute.emailLoginPage: (context) => EmailLoginPage(),
    MyRoute.joinPage: (context) => JoinPage(),
  };

}