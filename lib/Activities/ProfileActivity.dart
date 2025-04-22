import 'package:flutter/material.dart';

class ProfileActivity extends StatelessWidget {
  const ProfileActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shadowColor: Colors.green[900],
        surfaceTintColor: Colors.green[900],
      ),
      body: Center(child: Text('Profile')),
    );
  }
}
