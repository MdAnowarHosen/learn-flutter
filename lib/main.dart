import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      // theme: ThemeData(primarySwatch: Colors.green) ,
      // color: Colors.green,
    );
  }
}

void MySnackBar(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shadowColor: Colors.green[900],
        surfaceTintColor: Colors.green[900],
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("Search", context);
            },
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Settings", context);
            },
            icon: Icon(Icons.settings),
            tooltip: 'Settings',
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Profile", context);
            },
            icon: Icon(Icons.person),
            tooltip: 'Profile',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],

        currentIndex: 0,
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Home", context);
          } else if (index == 1) {
            MySnackBar("Search", context);
          } else if (index == 2) {
            MySnackBar("Settings", context);
          }
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[400],
        surfaceTintColor: Colors.green[900],
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2014/04/03/10/44/avatar-311292_1280.png',
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              iconColor: Colors.white,
              textColor: Colors.white,
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Search"),
              leading: Icon(Icons.search),
              iconColor: Colors.white,
              textColor: Colors.white,
              onTap: () {
                MySnackBar("Search", context);
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              iconColor: Colors.white,
              textColor: Colors.white,
              onTap: () {
                MySnackBar("Settings", context);
              },
            ),
              ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
              iconColor: Colors.white,
              textColor: Colors.white,
              onTap: () {
                MySnackBar("About", context);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Hello Flutter")),
    );
  }
}
