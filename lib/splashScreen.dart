import 'dart:async';

import 'package:flutter/material.dart';

class SplashScr extends StatefulWidget {
  @override
  _SplashScrState createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, "/home"));
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
                "Preparando Todo",
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
