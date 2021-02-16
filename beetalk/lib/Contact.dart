import 'package:beetalk/Login_Screen.dart';
import 'package:beetalk/main.dart';
import 'package:flutter/material.dart';
import 'aboutus.dart';

void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class Contact extends StatelessWidget {
  final appTitle = 'BeeTalk Food Delivery App';
  String usertitle = 'Hello user123';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          height: 600.0,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Contact us',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  )),
              UserAccountsDrawerHeader(
                accountName: Text("Our Hotline: +65 12345678"),
                accountEmail: Text("contactus@support.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.yellow,
                  child: Text(
                    "Contact",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Ng Yi Jie"),
                accountEmail: Text("ngyijie2@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.yellow,
                  child: Text(
                    "P",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text('Log out'),
                onTap: () {
                  changeScreen(context, MyApp());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
