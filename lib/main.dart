import 'package:flutter/material.dart';

import 'ListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "toktik", home: ListPage());
  }
}
