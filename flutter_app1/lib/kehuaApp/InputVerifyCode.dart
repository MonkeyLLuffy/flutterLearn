import 'package:flutter/material.dart';
import 'package:flutterapp1/component/TitleBar.dart';

class InputVerifyCodePage extends StatelessWidget {
  const InputVerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: new Column(
        children: [
          SizedBox(
            height: 40,
          ),
          TitleBar(),
        ],
      )),
    );
  }
}
