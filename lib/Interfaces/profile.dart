import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
    );
  }
}