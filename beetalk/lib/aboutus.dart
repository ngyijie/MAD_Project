import 'package:beetalk/Contact.dart';
import 'package:beetalk/Login_Screen.dart';
import 'package:beetalk/Profile.dart';
import 'package:beetalk/main.dart';
import 'package:beetalk/aboutus.dart';
import 'package:flutter/material.dart';

void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class AboutUs extends StatelessWidget {
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
              child: new Image.asset('images/Asset1.png'),
              height: 200,
              width: 200,
            ),
            Center(
              child: Text(
                'BeeTalk Restaurants',
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
            Text(
              "There are over 200 restaurants in this delivery app. What are you wating for? Grab your delicious food and heartwarming beverage from 1 of our vendors now! Order now and use the coupon code 'usecoupon' and get a 50% off your first order!.",
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
