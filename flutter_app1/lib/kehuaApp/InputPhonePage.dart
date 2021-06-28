import 'package:flutter/material.dart';
import 'package:flutterapp1/component/RoundButton.dart';
import 'package:flutterapp1/component/SizeText.dart';
import 'package:flutterapp1/component/TitleBar.dart';

class InputPhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.topLeft,
          child: new Container(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                // 第一行，返回键
                TitleBar(),
                SizedBox(
                  height: 200,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedText(
                    "你的手机号多少",
                    20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RoundButton("获取验证码", 30,
                    btnBgColor: Color(0xffFF295E),
                    width: 150,
                    btnTextColor: Colors.white,
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/inputVerifyCode")})
              ],
            ),
          )),
    );
  }
}
