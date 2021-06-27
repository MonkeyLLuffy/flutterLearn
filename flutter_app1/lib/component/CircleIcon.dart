import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  Icon icon;
  double height;
  double width;
  Color? bgColor = Colors.black;
  CircleIcon(this.icon, this.height, this.width, {this.bgColor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        decoration: BoxDecoration(color: bgColor),
        child: this.icon,
      ),
    );
  }
}
