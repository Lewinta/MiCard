import 'package:flutter/material.dart';
import './personalInfo.dart' as personalInfo;
import 'package:clipboard_manager/clipboard_manager.dart';

class BankInfo extends StatelessWidget {
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
              "Información Bancaria",
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
              Image(
                image: AssetImage('images/popular_icon.png'),
              ),
              Text(
                "792597502",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              FlatButton(
                child: Icon(
                  Icons.content_copy,
                  color: Colors.white,
                ),
                onPressed: () {
                  ClipboardManager.copyToClipBoard("792597502").then((result) {
                    final snackBar = SnackBar(
                      content: Text('Copied to Clipboard'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  });
                },
              )
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage('images/bhd_icon.png'),
              ),
              Text(
                "15540400018",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              FlatButton(
                onPressed: () {
                  ClipboardManager.copyToClipBoard("15540400018")
                      .then((result) {
                    final snackBar = SnackBar(
                      content: Text('Copied to Clipboard'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  });
                },
                child: Icon(
                  Icons.content_copy,
                  color: Colors.white,
                ),
              )
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
