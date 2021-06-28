import 'package:flutter/material.dart';
import 'package:flutterapp1/kehuaApp/InputPhonePage.dart';
import 'package:flutterapp1/kehuaApp/InputVerifyCode.dart';
import 'package:flutterapp1/kehuaApp/Login.dart';
import 'package:flutterapp1/kehuaApp/PhoneLogin.dart';
import 'TabPage.dart';
import '../page/CertPage.dart';
import '../page/SearchPage.dart';

//配置路由
final routes = {
  "/home": (context) => TabsPage(),
  "/": (context) => LoginPage(),
  '/login': (context) => PhoneLoginPage(),
  '/inputPhone': (context) => InputPhonePage(),
  '/inputVerifyCode': (context) => InputVerifyCodePage(),
  '/cert': (context) => CertPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments)
};

//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  Function pageContentBuilder = routes[name] as Function;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
