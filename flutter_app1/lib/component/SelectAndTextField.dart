import 'package:flutter/material.dart';

class SelectAndTextField extends StatelessWidget {
  double? width;
  var selectOnchanged;
  var inputOnchanged;
  List<DropdownMenuItem> leftDropItems;

  SelectAndTextField(this.leftDropItems,
      {Key? key, this.width, this.inputOnchanged, this.selectOnchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: width,
      child: Row(
        children: [
          Container(
              child: DropdownButtonHideUnderline(
                  child: DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text("+86"),
              ),
              DropdownMenuItem(
                child: Text("+88"),
              ),
              DropdownMenuItem(
                child: Text("+68"),
              ),
              DropdownMenuItem(
                child: Text("+66"),
              )
            ],
            onChanged: selectOnchanged,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 16,
          ))),
          Container(
            child: TextField(
              onChanged: inputOnchanged,
            ),
          )
        ],
      ),
    ));
  }
}
