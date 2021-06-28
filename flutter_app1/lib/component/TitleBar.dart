import 'package:flutter/material.dart';
import 'package:flutterapp1/component/SizeText.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
              onTap: () => {Navigator.of(context).pop()},
              behavior: HitTestBehavior.translucent,
              child: Container(
                height: 40,
                width: 50,
                child: Image.asset(
                  "assets/fanhui.png",
                  fit: BoxFit.fitHeight,
                ),
              )),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: SizedText(
              "~!",
              40,
              fontWeight: FontWeight.w900,
              textColor: Color(0xffFF295E),
            ),
          ))
        ],
      ),
    );
  }
}
