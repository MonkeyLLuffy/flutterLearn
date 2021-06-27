import 'package:flutter/material.dart';

class CertPage extends StatelessWidget {
  const CertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
            length: 2,
            child: new Scaffold(
              appBar: new AppBar(
                  title: Text("我的购物车"),
                  centerTitle: true,
                  bottom: TabBar(
                    tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
                  )),
              body: TabBarView(
                children: <Widget>[
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text("第一个tab")),
                      ListTile(title: Text("第一个tab")),
                      ListTile(title: Text("第一个tab"))
                    ],
                  ),
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text("第二个tab")),
                      ListTile(title: Text("第二个tab")),
                      ListTile(title: Text("第二个tab"))
                    ],
                  )
                ],
              ),
            )));
  }
}
