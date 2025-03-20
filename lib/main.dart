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
        title: const Text('Barta'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar('I am message', context);
            },
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am notifications', context);
            },
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am search', context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar('I am user', context);
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Center(child: Text('Bismillah')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar('I am  Floating action button', context);
        },
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (int index) {
          if (index == 0) {
            MySnackBar('I am search bottom menu', context);
          } else if (index == 1) {
            MySnackBar('I am home bottom menu', context);
          } else if (index == 2) {
            MySnackBar('I am profile bottom menu', context);
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
