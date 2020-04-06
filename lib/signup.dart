import 'package:akablog/login.dart';
import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';

class Signup extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
      return _Signup();
  }

}

class _Signup  extends State<Signup> {

  List titles = ["M.", "Mme", "Mlle"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentTitle;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentTitle = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String title in titles) {
      items.add(new DropdownMenuItem(
          value: title,
        child: SizedBox(
          width: 100.0, //
          child: Text(title, textAlign: TextAlign.center),
        ),
      ));
    }
    return items;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.orange[900],
                    Colors.orange[800],
                    Colors.orange[400]
                  ]
              )
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 80,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          1,
                          Text(
                            "Inspirez le monde",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          1,
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.transparent,
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),

                                    ),
                                    child: new DropdownButton(
                                      isExpanded: true,
                                      value: _currentTitle,
                                      items: _dropDownMenuItems,
                                      onChanged: changedDropDownItem,
                                      style: new TextStyle(
                                        color: Colors.white,
                                      ),


                                    )
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Nom",
                                      hintStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email ou téléphone",
                                      hintStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Mot de passe",
                                        hintStyle: TextStyle(
                                            color: Colors.white)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),

                        FadeAnimation(
                          1,
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color.fromRGBO(49, 39, 79, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Créer votre compte",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FadeAnimation(
                          1,
                          Center(
                            child: new GestureDetector(
                              onTap: () {
                                toLogin();
                              },
                              child: Text(
                                "S'identifier",
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
          ,
        )
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentTitle = selectedCity;
    });
  }

  void toLogin() {
    Navigator.push(context, new MaterialPageRoute(
      builder: (BuildContext context) {
        return Login();
      },
    ));
  }
}