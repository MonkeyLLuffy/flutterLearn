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
                Icon(Icons.phone, color: Color(0xffFF295E)),
                100,
                100,
                bgColor: Color(0xFFF8F7FC),
              ),
              SizedText("本机号码", 16),
              SizedText("150XXXX7841", 20),
              SizedBox(
                height: 200,
              ),
              SizedText("中国移动", 20),
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
