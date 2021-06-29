import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/component/RoundButton.dart';
import 'package:flutterapp1/component/SelectAndTextField.dart';
import 'package:flutterapp1/component/SizeText.dart';
import 'package:flutterapp1/component/TitleBar.dart';
import 'package:flutterapp1/kehuaApp/AgreementDialog.dart';

class InputPhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> leftDropItems = [
      DropdownMenuItem(
        child: Text("+86"),
      ),
      DropdownMenuItem(
        child: Text("+88"),
      ),
      DropdownMenuItem(
        child: Text("+68"),
      ),
      DropdownMenuItem(
        child: Text("+66"),
      )
    ];
    return Scaffold(
        body: new Container(
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 0,
            child: TitleBar(),
          ),
          Align(
            alignment: Alignment(0, -0.4),
            child: SizedText(
              "你的手机号多少",
              20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment(0, -0.3),
            child: Container(
              width: 300,
              child: SelectAndTextField(
                leftDropItems,
                width: 200,
              ),
            ),
          ),
          Align(
              alignment: Alignment(0, -0.1),
              //   child: new Container(
              child: RichText(
                //文字居中
                textAlign: TextAlign.center,
                //文字区域
                text: TextSpan(
                    text: "登录表示同意",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                    children: [
                      TextSpan(
                          text: " 用户协议 ",
                          style: TextStyle(color: Colors.blueAccent),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // todo 跳转其他界面
                              print("对话框显示用户协议");
                              AgreementDialog(context, "用户协议",
                                      "这是可话的用户协议XXXXXXXXXX,SSDSDSWE无法实施身高多少时间吗是的加法公式计算框架是")
                                  .show();
                            }),
                      TextSpan(text: " 和 "),
                      TextSpan(
                          text: " 隐私政策 ",
                          style: TextStyle(color: Colors.blueAccent),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // todo 跳转其他界面
                              AgreementDialog(context, "隐私政策",
                                      "这是可话的隐私政策XXXXXXXXXX,SSDSDSWE无法实施身高多少时间吗是的加法公式计算框架是")
                                  .show();
                            })
                    ]),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: RoundButton("获取验证码", 30,
                btnBgColor: Color(0xffFF295E),
                width: 150,
                btnTextColor: Colors.white,
                onPressed: () =>
                    {Navigator.of(context).pushNamed("/inputVerifyCode")}),
          )
        ],
      ),
    ));
  }
}
