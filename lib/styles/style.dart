import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

InputDecoration inputDecorationStyle(String label) {
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
    padding: EdgeInsets.all(22),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}

backgroundScreen(context) {
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

DecoratedBox AppDropdownStyle(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(padding: EdgeInsets.only(left: 20, right: 20), child: child),
  );
}
