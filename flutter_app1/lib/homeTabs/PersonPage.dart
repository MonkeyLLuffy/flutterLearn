import 'package:flutter/material.dart';
import 'package:flutterapp1/page/SearchPage.dart';
import '../page/CertPage.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        height: 600,
        width: 500,
        transform: Matrix4.rotationX(0.2),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("我的购物车"),
              onTap: () => {Navigator.pushNamed(context, "/cert")},
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("我的搜索记录"),
              onTap: () => {Navigator.pushNamed(context, "/search")},
            )
          ],
        ),
      ),
    );
  }
}
