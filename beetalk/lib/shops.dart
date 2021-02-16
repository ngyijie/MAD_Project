import 'package:beetalk/Contact.dart';
import 'package:beetalk/Login_Screen.dart';
import 'package:beetalk/Profile.dart';
import 'package:beetalk/main.dart';
import 'package:beetalk/aboutus.dart';
import 'package:flutter/material.dart';

void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class MyShops extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('BeeTalk Food Delivery App'),
          ),
          body: TabBarView(
            children: [
              Intro(),
              Contact(),
              Profile(),
            ],
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
                ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    changeScreen(context, AboutUs());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Intro extends StatelessWidget {
  final appTitle = 'BeeTalk Food Delivery App';
  String usertitle = 'Hello user123';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: new Image.asset(
                'images/food1.jpg',
                width: 350.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Western Food",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: new Image.asset(
                'images/food2.jpg',
                width: 350.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Happy Hawkers",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: new Image.asset(
                'images/food3.jpg',
                width: 350.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Dee Doo Duck Rice",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: new Image.asset(
                'images/food4.jpg',
                width: 350.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Burgers Cuisine",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: new Image.asset(
                'images/food5.jpg',
                width: 350.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Sweet Heaven",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
