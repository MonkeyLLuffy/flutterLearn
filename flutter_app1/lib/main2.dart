import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var _data = [
  //   {
  //     "title":"博客图片",
  //     "subTitle":"这个博客是VSCode必备插件",
  //     "imageUrl":"https://img-blog.csdnimg.cn/20190425201617839.jpg"
  //   },
  //   {
  //     "title":"Flutter",
  //     "subTitle":"这个是Flutter的图片",
  //     "imageUrl":"https://flutterchina.club/images/flutter-mark-square-100.png"
  //   }
  // ];

  const MyApp({Key? key}) : super(key: key);

  // List<int> _data = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: new AppBar(title: Text('第一个APP')),
      floatingActionButton: new Builder(builder: (BuildContext context) {
        int _count = 0;
        return new FloatingActionButton(
          child: Icon(Icons.email),
          shape: new CircleBorder(),
          tooltip: "Hello",
          elevation: 7.0,
          highlightElevation: 14.0,
          mini: false,
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          onPressed: () {
            _count++;
            print("点击floatingBar$_count");
          },
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: new Container(
          width: 500,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return new ListTile(
                onTap: () => {print("这是点击$index")},
                onLongPress: () => {print("长按$index")},
                leading: Image.network(
                    "https://flutterchina.club/images/flutter-mark-square-100.png"),
                title: Text("文字1"),
              );
            },
          )),
      bottomNavigationBar: new BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), title: Text('新闻中心')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('个人中心'))
      ]),
    ));
  }
}
