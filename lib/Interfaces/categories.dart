import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Category();
  }
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
    );
  }
}