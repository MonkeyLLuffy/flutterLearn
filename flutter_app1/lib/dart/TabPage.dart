import 'package:flutter/material.dart';

import '../homeTabs/CategoryPage.dart';
import '../homeTabs/PersonPage.dart';
import '../homeTabs/HomePage.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('第一个APP')),
      floatingActionButton: Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: new Builder(builder: (BuildContext context) {
            int _count = 0;
            return new FloatingActionButton(
              child: Icon(Icons.add),
              shape: new CircleBorder(),
              tooltip: "Hello",
              elevation: 7.0,
              highlightElevation: 1.0,
              mini: false,
              foregroundColor: Colors.white,
              backgroundColor: Colors.yellow,
              onPressed: () {
                _count++;
                print("点击floatingBar$_count");
              },
            );
          })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => {
                setState(() {
                  this._currentIndex = value;
                })
              },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('个人中心'))
          ]),
    );
  }
}
