import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'AgreementDialog.dart';
import '../component/RoundButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          child: new Container(
              transform: Matrix4.rotationX(0.2),
              color: Colors.white,
              height: double.infinity,
              width: double.infinity,
              child: Stack(children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: <Widget>[
                      Expanded(child: SizedBox(height: 200)),
                      new Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: new Text(
                          "可话~！",
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Color(0xffFF295E),
                              // fontFamily: "Italic",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      new Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: new Text(
                          "说 你 想 说 的 话",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 200,
                        ),
                      ),
                      Row(children: <Widget>[
                        Expanded(
                            child: new Container(
                                height: 50,
                                margin: EdgeInsets.all(100),
                                child: RoundButton(
                                  "手机号登录",
                                  50,
                                  textSize: 16,
                                  btnTextColor: Colors.white,
                                  btnBgColor: Color(0xffFF295E),
                                  onPressed: () => {
                                    Navigator.of(context).pushNamed("/login")
                                  },
                                )))
                      ]),
                      Expanded(
                        child: SizedBox(
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: new Container(
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
                      ),
                    ))
              ]))),
    );
  }
}
