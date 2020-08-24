import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  PageController _pageController;
  int _selectedIndex = 0;
  List<Widget> items = <Widget>[
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: items,
    ));
  }
}
