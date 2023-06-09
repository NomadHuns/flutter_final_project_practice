import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.mainPage,
      routes: getRouter(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }

}