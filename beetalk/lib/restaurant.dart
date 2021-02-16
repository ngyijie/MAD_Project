import 'package:beetalk/Contact.dart';
import 'package:beetalk/Login_Screen.dart';
import 'package:beetalk/Profile.dart';
import 'package:beetalk/main.dart';
import 'package:beetalk/aboutus.dart';
import 'package:beetalk/shops.dart';
import 'package:flutter/material.dart';

void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class MyTab extends StatelessWidget {
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
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.directions_car,
                  color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.local_phone,
                  color: Colors.greenAccent,
                )),
                Tab(
                    icon: Icon(
                  Icons.account_circle,
                  color: Colors.greenAccent,
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Restaurant(),
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

class Restaurant extends StatelessWidget {
  final appTitle = 'BeeTalk Food Delivery App';
  String usertitle = 'Hello user123';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
                child: Row(
              children: <Widget>[
                FlatButton(
                  textColor: Colors.black,
                  child: Text(
                    'Restaurants',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    changeScreen(context, MyShops());
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )),
            Expanded(
                child: GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food1.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food2.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food3.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food4.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food5.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food6.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food7.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food8.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food9.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: new Image.asset(
                    'images/food10.jpg',
                    width: 350.0,
                    height: 350.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
