
import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/auth/login/login_page.dart';

class MyRoute {

  static String loginPage = "/login";

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.loginPage: (context) => LoginPage(),
  };

}