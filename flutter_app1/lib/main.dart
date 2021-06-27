import 'package:flutter/material.dart';
import 'package:flutterapp1/kehuaApp/Login.dart';
import 'dart/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/", //初始化的时候加载的路由
        // home: LoginPage(),
        onGenerateRoute: onGenerateRoute);
  }
}
