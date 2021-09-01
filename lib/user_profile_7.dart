import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class NavDrawerScreen extends StatefulWidget {
  NavDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavDrawerScreenState createState() => _NavDrawerScreenState();
}

class _NavDrawerScreenState extends State<NavDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Drawer"),
        elevation: 0,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                child: Image.asset(
                  'assets/images/drop_logo2a.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite_sharp),
              title: const Text('Favourites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Friends'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Requests'),
              onTap: () {
                Navigator.pop(context);
              },
              // trailing: Icon(
              //   Icons.brightness_1,
              //   size: 12.0,
              //   color: Colors.redAccent,
              // ),
              trailing: Badge(
                badgeContent: Text(
                  '8',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_police_outlined),
              title: const Text('Policies'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/splash_3.png',
                width: 150,
                height: 150,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
