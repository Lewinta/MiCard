import 'package:flutter/material.dart';
import './contact_info.dart' as contactInfo;
import './bank_info.dart' as bankInfo;
import './splashScreen.dart' as splashScr;
import 'package:flutter/services.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => MyHomePage(),
};
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: splashScr.SplashScr(),
      routes: routes,
//      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      bottomNavigationBar: Material(
        color: Colors.black54,
        child: Container(
          child: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.account_box),
                text: "Personal",
              ),
              Tab(
                icon: Icon(Icons.account_balance),
                text: "Bank",
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          contactInfo.ContactInfo(),
          bankInfo.BankInfo(),
//          splashScr.SplashScr(),
        ],
      ),
    );
  }
}
