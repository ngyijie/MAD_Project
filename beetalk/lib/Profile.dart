import 'package:beetalk/Login_Screen.dart';
import 'package:beetalk/main.dart';
import 'package:flutter/material.dart';

void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class Profile extends StatelessWidget {
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
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'My Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  )),
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
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Change User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Change Password',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.yellow,
                    child: Text('Change Credentials'),
                    onPressed: () {
                      changeScreen(context, LoginPage());
                    },
                  )),
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
