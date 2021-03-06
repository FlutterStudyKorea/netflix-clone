import 'package:flutter/material.dart';
import 'package:flutter_neflix_clone/screen/home_screen.dart';
import 'package:flutter_neflix_clone/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Neflix",
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.white),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                Container(child: Center(child: Text('검색'))),
                Container(child: Center(child: Text('저장'))),
                Container(child: Center(child: Text('더보기')))
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
