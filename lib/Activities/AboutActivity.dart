import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutActivity extends StatelessWidget {
  String message;
  AboutActivity(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shadowColor: Colors.green[900],
        surfaceTintColor: Colors.green[900],
      ),
      body: Center(child: Text('$message')),
    );
  }
}
