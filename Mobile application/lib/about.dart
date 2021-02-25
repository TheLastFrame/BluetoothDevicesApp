import 'dart:async';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {


  @override
  Widget build(BuildContext context) {
    Widget v = null;
//    if(PrefService.getBool("pref_history"))
//      {
//        v = ListView() //TODO: read in history
//      }
//    else {
    v = Align(alignment: FractionalOffset.center,child:Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[ //TODO: add app icon, name of developer/ copyright symbool & years, description for app, used modules?, send in pictures email for helpers
        Text('About Page not created yet 😕 ...', style: TextStyle(fontSize: 22.0)),
        Text('We are very sorry for the inconvinience...'),
      ],));
//    }
    return Scaffold(
        appBar: AppBar(
          title: Text('History',
              style: TextStyle(
                color: Colors.black87,
              )),
          backgroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.black87),),
        body: v
    );
  }
}
