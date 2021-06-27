import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/component/CircleIcon.dart';
import 'package:flutterapp1/component/RoundButton.dart';
import 'package:flutterapp1/component/SizeText.dart';
import 'package:flutterapp1/kehuaApp/AgreementDialog.dart';

class PhoneLoginPage extends StatelessWidget {
  const PhoneLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
          child: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: new Column(
            children: [
              // icon手机的那个图片
              SizedBox(height: 200),
              CircleIcon(
                Icon(
                  Icons.phone_android,
                  color: Color(0xffFF295E),
                  size: 60,
                ),
                200,
                200,
                bgColor: Color(0xFFF8F7FC),
              ),
              SizedBox(height: 10),
              SizedText("本机号码", 16),
              SizedBox(height: 10),

              SizedText("150XXXX7841", 20),
              SizedBox(
                height: 200,
              ),
              SizedText("中国移动", 20),
              SizedBox(height: 10),
              Container(
                  height: 50,
                  child: RoundButton("本机号码一键登录", 50.0,
                      btnBgColor: Color(0xffFF295E),
                      width: 250,
                      btnTextColor: Colors.white,
                      textSize: 20)),
              SizedBox(height: 10),
              Container(
                  height: 50,
                  child: RoundButton("输入手机号登录", 50.0,
                      btnBgColor: Color(0xffF8F7FC),
                      width: 250,
                      btnTextColor: Color(0xffFF295E),
                      textSize: 20)),
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: new Container(
              padding: EdgeInsets.all(10),
              child: new Row(
                children: [
                  Checkbox(
                      value: true,
                      // checkColor: Color(0xffFF295E),
                      onChanged: (value1) => {
                            print("选中了吗？答曰:$value1"),
                          }),
                  Expanded(
                      child: RichText(
                    //文字居中
                    textAlign: TextAlign.left,
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
                                }),
                          TextSpan(text: " 以及 "),
                          TextSpan(
                              text: " 中国移动认证条款 ",
                              style: TextStyle(color: Colors.blueAccent),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // todo 跳转其他界面
                                  AgreementDialog(context, "中国移动认证条款",
                                          "这是可话的中国移动认证条款XXXXXXXXXX,SSDSDSWE无法实施身高多少时间吗是的加法公式计算框架是")
                                      .show();
                                }),
                        ]),
                  ))
                ],
              ),
            ))
      ])),
    );
  }
}
