import 'package:flutter/material.dart';

import 'style.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SumApp(),
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

class SumApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SumAppUI();
  }
}

class SumAppUI extends State<SumApp> {
  Map<String, double> FormValues = {"Num1": 0, "Num2": 0};
  double sum = 0;

  @override
  Widget build(BuildContext context) {
    MyInputOnChanged(String key, String value) {
      setState(() {
        // FormValues[key] = value;
        FormValues.update(key, (update) => double.parse(value));
      });
    }

    Sum() {
      setState(() {
        sum = FormValues["Num1"]! + FormValues["Num2"]!;
      });
    }

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
        backgroundColor: Colors.green[700],
        // surfaceTintColor: Colors.green[900],
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                // decoration: BoxDecoration(color: Colors.green),
                accountName: Text('Anowar Hosen'),
                accountEmail: Text('anowarhosensoft@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                ),
                onDetailsPressed: () => {MySnackBar("Profile", context)},
              ),
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
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(sum.toString(), style: titleStyle()),
            SizedBox(height: 20),
            // input field
            TextFormField(
              decoration: inputDecoration("Enter 1st number"),
              onChanged: (value) => MyInputOnChanged("Num1", value),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: inputDecoration("Enter 2nd number"),
              onChanged: (value) => MyInputOnChanged("Num2", value),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Sum();
                },
                child: Text("Sum"),
                style: buttonStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
