import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/my_avatar.jpg'),
            radius: 80,
          ),
          Center(
            child: Text(
              "Lewin Villar",
              style: TextStyle(
                  color: Colors.white, fontSize: 35, fontFamily: 'Pacifico'),
            ),
          ),
          Text(
            "Licenciado en Informática",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
