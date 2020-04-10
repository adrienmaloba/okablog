import 'package:akablog/login.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main () {
  runApp(new Akablog());
}

class Akablog extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "Akablog",
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),

      home: App(),

    );
  }
}