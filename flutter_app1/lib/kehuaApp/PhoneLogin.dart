import 'package:flutter/material.dart';
import 'package:flutterapp1/component/CircleIcon.dart';
import 'package:flutterapp1/component/RoundButton.dart';
import 'package:flutterapp1/component/SizeText.dart';

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
                      btnTextColor: Colors.white,
                      textSize: 20))
            ],
          ),
        )
      ])),
    );
  }
}
