import 'dart:ffi';

import 'package:flutter/material.dart';

/**
 * 协议用的Dialog
 */
class AgreementDialog {
  String contentText;
  BuildContext context;

  String titleText;
  AgreementDialog(this.context, this.titleText, this.contentText);

  void show() {
    showDialog(
        context: context,
        builder: (context) {
          return new AlertDialog(
            title: Text(
              this.titleText,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            content: new Container(
              child: new Text(
                contentText,
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        });
  }
}
