import 'package:flutter/material.dart';

class AboutActivity extends StatelessWidget {
  const AboutActivity({super.key});

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
      body: Center(child: Text('About')),
    );
  }
}
