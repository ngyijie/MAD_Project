import 'package:beetalk/Login_Screen.dart';
import 'package:beetalk/restaurant.dart';
import 'package:beetalk/aboutus.dart';
import 'package:flutter/material.dart';
import 'Login_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'BeeTalk Food Delivery App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      color: Colors.black,
      home: HomePage(title: appTitle),
    );
  }
}

void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'BeeTalk',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Welcome to Bee Talk',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  )),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(30),
                child: new Image.asset(
                  'images/Asset1.png',
                  width: 210.0,
                  height: 265.0,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.yellow,
                    child: Text('Login'),
                    onPressed: () {
                      changeScreen(context, LoginPage());
                    },
                  )),
            ],
          )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("No User Logged on"),
              accountEmail: Text("Please log in first!"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.yellow,
                child: Text(
                  "No user found",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                changeScreen(context, LoginPage());
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                changeScreen(context, AboutUs());
              },
            ),
          ],
        ),
      ),
    );
  }
}
