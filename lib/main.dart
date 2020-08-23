import 'package:flutter/material.dart';
import 'package:flutter_tiktok/content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "toktik",
      home: ContentPage()
    );
  }
}

