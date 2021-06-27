import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        color: Colors.orange,
        height: 500,
        width: 500,
        transform: Matrix4.rotationX(0.2),
        child: Text(
          '这是中文的字符',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
