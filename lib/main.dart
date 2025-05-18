import 'package:flutter/material.dart';
// import 'toDoPage.dart';
import 'style.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDOAPPNow(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      // theme: ThemeData(primarySwatch: Colors.green) ,
      // color: Colors.green,
    );
  }
}

class ToDOAPPNow extends StatelessWidget {
  const ToDOAPPNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(labelText: 'Enter Task'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add'),
              style: buttonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
