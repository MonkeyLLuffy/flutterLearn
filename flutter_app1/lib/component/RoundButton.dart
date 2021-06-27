import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  Color? btnBgColor = Colors.white;
  Color? btnTextColor = Colors.black;
  String btnText;
  double? textSize = 16;
  double roundAngle = 30;
  double? width;
  double? height;
  EdgeInsetsGeometry? padding;
  var onPressed;
  RoundButton(this.btnText, this.roundAngle,
      {Key? key,
      this.btnBgColor,
      this.btnTextColor,
      this.textSize,
      this.width,
      this.height,
      this.padding,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: this.onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(this.btnBgColor),

            ///圆角
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius:
                    BorderRadius.all(Radius.circular(this.roundAngle))))),
        child: Container(
          padding: this.padding,
          width: this.width,
          height: this.height,
          child: Text(
            this.btnText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: this.textSize, color: this.btnTextColor),
          ),
        ));
  }
}
