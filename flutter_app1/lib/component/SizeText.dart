import 'dart:ffi';

import 'package:flutter/material.dart';

class SizedText extends StatelessWidget {
  String textContent;
  FontWeight? fontWeight;

  var textSize = 16.0;
  Color? textColor = Colors.black;
  SizedText(this.textContent, this.textSize,
      {Key? key, this.textColor, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.textContent,
      style: TextStyle(
          color: textColor, fontSize: textSize, fontWeight: fontWeight),
    );
  }
}
