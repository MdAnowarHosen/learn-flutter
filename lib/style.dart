import 'package:flutter/material.dart';

InputDecoration inputDecoration(String label) {
  return InputDecoration(border: const OutlineInputBorder(), labelText: label);
}

TextStyle titleStyle() {
  return const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
}

// button style

ButtonStyle buttonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    padding: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}
