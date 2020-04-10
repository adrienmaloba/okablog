import 'package:flutter/material.dart';

class MyArticle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyArticle();
  }
}

class _MyArticle extends State<MyArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes articles'),
      ),
    );
  }
}