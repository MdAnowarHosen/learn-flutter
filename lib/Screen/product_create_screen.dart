import 'package:flutter/material.dart';

import '../styles/style.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          backgroundScreen(context),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: inputDecorationStyle('Product Name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Name'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                    style: buttonStyle(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
