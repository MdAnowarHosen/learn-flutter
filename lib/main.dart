import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),
        debugShowCheckedModeBanner:false,
    // theme: ThemeData(primarySwatch: Colors.green) ,
      // color: Colors.green,
    );
  }
}

void MySnackBar(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}


class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar('I am search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('I am user', context);}, icon: Icon(Icons.person)),
        ],
      ),
      body: Text('Bismillah, starting by the name of Allah'),
    );
  }
}
