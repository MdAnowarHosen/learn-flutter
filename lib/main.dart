import 'package:flutter/material.dart';

import 'fragment/BalanceFragment.dart';
import 'fragment/HomeFragment.dart';
import 'fragment/MessageFragment.dart';
import 'fragment/NotificationFragment.dart';
import 'fragment/ProfileFragment.dart';
import 'fragment/SearchFragment.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
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
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          iconTheme: IconThemeData(color: Colors.green),
          foregroundColor: Colors.green,
          backgroundColor: const Color.fromARGB(255, 197, 231, 198),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.notifications), text: 'Notification'),
              Tab(icon: Icon(Icons.message), text: 'Message'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.balance), text: 'Balance'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeFragment(),
            NotificationFragment(),
            MessageFragment(),
            SearchFragment(),
            BalanceFragment(),
            ProfileFragment(),
          ],
        ),
      ),
    );
  }
}
