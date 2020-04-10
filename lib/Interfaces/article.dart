import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Article();
  }
}

class _Article extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouveau article'),
      ),
    );
  }
}