import 'package:flutter/material.dart';
import './personalInfo.dart' as personalInfo;
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget {
  void callMe() {
    launch('tel:8298260772');
  }

  void emailMe() {
    launch('mailto:lewin.villar@gmail.com');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        personalInfo.PersonalInfo(),
        Container(height: 50),
        Container(
          height: 60,
          child: Center(
            child: Text(
              "Contacto",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 50,
        ),
        Container(
          height: 50,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.contact_phone,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () => callMe(),
              ),
              FlatButton(
                child: Text(
                  "(829) 826-0772",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => callMe(),
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () => emailMe(),
              ),
              FlatButton(
                child: Text(
                  "lewin.villar@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => emailMe(),
              ),
            ],
          ),
        ),
        Container(
          height: 46,
        ),
      ],
    );
  }
}
