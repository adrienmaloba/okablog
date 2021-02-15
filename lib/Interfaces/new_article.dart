import 'package:flutter/material.dart';

class NewArticle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewArticle();
  }
}

class _NewArticle extends State<NewArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouveau article'),
      ),
    );
  }
}