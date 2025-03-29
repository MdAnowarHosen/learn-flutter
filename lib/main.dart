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
          )
          ],

      ),
      body: Center(
        child: Text("Hello Flutter"),
      ),
    );
  }
}
