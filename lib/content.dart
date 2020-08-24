import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  Color _color;

  // FIXME このコンストラクタを消す
  ContentPage(Color color) {
    _color = color;
  }

  @override
  _ContentPageState createState() => _ContentPageState(_color);
}

class _ContentPageState extends State<ContentPage> {
  Color _color;

  _ContentPageState(Color color) {
    _color = color;
  }

  @override
  Widget build(BuildContext context) {
    final fabs = Column(
      verticalDirection: VerticalDirection.up,
      children: [
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.chat,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );

    return Scaffold(
        body: Center(
//          child: Image.network("https://qiita-user-contents.imgix.net/https%3A%2F%2Fqiita-image-store.s3.amazonaws.com%2F0%2F366412%2F1ea3e30e-c5df-da7a-4ef7-be4a4279adba.jpeg?ixlib=rb-1.2.2&auto=format&gif-q=60&q=75&w=1400&fit=max&s=c8f1b65e8725b1958ef6d585bfdced7477")
            child: Container(
          color: _color,
        )),
        floatingActionButton: fabs);
  }
}
