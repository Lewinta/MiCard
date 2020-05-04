import 'dart:async';

import 'package:flutter/material.dart';

class SplashScr extends StatefulWidget {
  @override
  _SplashScrState createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  String str = "Preparando todo";
  void updateText(String s) {
    setState(() {
      str = s;
    });
  }

  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
      () => updateText("Cargando Información"),
    );
    Future.delayed(
      Duration(seconds: 3),
      () => updateText("Listo"),
    );
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, "/home"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  backgroundImage: AssetImage('images/my_avatar.jpg')),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 40, color: Colors.white, fontFamily: 'Pacifico'),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                "$str",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35),
              )
            ],
          )
        ],
      ),
    );
  }
}
