import 'dart:core';

import 'package:akablog/Modal/Article.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Dashboard();
  }


}

class _Dashboard extends State<Dashboard> {

  /*List getArticles(){

  }*/

  List articles = [];
  getHomePageBody(BuildContext context) {
    articles.add(Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"element1.jpg"));

    var article = Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"element1.jpg");
    return ListView.builder(
      itemCount: wonders.length,
      itemBuilder: (context, index) {
        return ListTile(leading: Image.network(wonders[index].image), title: Text(wonders[index].title), subtitle: Text(wonders[index].author),);
      },
    );
  }
  // First Attempt


  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
        child: new Column(

          children: <Widget>[
            new ListTile(
              leading: new Image.asset(
                "img/examples/" + articles[index].image,
                fit: BoxFit.cover,
                width: 100.0,
              ),

              title: new Text(
                articles[index].title,
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(articles[index].description,
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('Population: ${articles[index].author}',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {
                _showSnackBar(context, articles[index]);
              },
            )
          ],
        ));
  }

  _showSnackBar(BuildContext context, Article item) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("${item.title} is a city in ${item.author}"),
      backgroundColor: Colors.amber,
    );
    Scaffold.of(context).showSnackBar(objSnackbar);
  }



  String title;
  String author;
  String description;
  String category;
  DateTime publication;
  String image;
  List wonders = [

    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),
    Article("Marketing","Adrien","Lorem","Tech",DateTime(1977, 9, 5),"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Christ-the-Redeemer.jpg"),

  ];


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
        title: Text('Explorez'),
      ),
      body: new ListView(
        children: <Widget>[
          carousel,
          Container(
            height: 500.0,
            child: BodyLayout(),
          )
        ],
      )
    );


  }


}


class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {

  final titles = ['bike', 'boat', 'bus', 'car',
    'railway', 'run', 'subway', 'transit', 'walk'];

  final icons = [Icons.directions_bike, Icons.directions_boat,
    Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
    Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
    Icons.directions_walk];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index]),
        ),
      );
    },
  );
}