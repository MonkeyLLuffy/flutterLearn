import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  Color? btnBgColor = Colors.white;
  Color? btnTextColor = Colors.black;
  String btnText;
  double? textSize = 16;
  double roundAngle = 30;
  var onPressed;
  RoundButton(this.btnText, this.roundAngle,
      {Key? key,
      this.btnBgColor,
      this.btnTextColor,
      this.textSize,
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
      child: Text(
        this.btnText,
        style: TextStyle(fontSize: this.textSize, color: this.btnTextColor),
      ),
    );
  }
}
