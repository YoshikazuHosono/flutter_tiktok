import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _selectedIndex = 0;

  static List<Widget> _pageList = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
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
          onPageChanged: _onPageChanged,
          children: _pageList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.flash_on), title: Text("Activity")),
          ],
          currentIndex: _selectedIndex,
          onTap: _onTap,
        ));
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onTap(int index) {
    _selectedIndex = index;
    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
