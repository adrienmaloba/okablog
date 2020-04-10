import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dashboard();
  }
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fitWidth,
        images: [
          AssetImage('img/slide1.jpg'),
          AssetImage('img/slide2.jpg'),
          AssetImage('img/slide3.jpg'),
          AssetImage('img/slide4.jpg'),
          AssetImage('img/slide5.jpg'),
        ],
        autoplay: true,
        indicatorBgPadding: 5.0,
        dotColor: Colors.orange[900],
        dotSize: 5.0,
        overlayShadow: true,
        overlayShadowColors: Colors.white,
        overlayShadowSize: 0.7,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Okablog'),
      ),
      body: ListView(
        children: <Widget>[
          carousel
        ],
      ),
    );
  }
}