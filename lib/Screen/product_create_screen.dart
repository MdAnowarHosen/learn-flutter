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
                    decoration: inputDecorationStyle('Product Code'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Image'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Unit Price'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: inputDecorationStyle('Product Total Price'),
                  ),
                  SizedBox(height: 20),
                  AppDropdownStyle(
                    DropdownButton(
                      value: '',
                      items: [
                        DropdownMenuItem(
                          child: Text('Select Product QTY'),
                          value: '',
                        ),
                        DropdownMenuItem(child: Text('1 PCS'), value: '1 pcs'),
                        DropdownMenuItem(child: Text('2 PCS'), value: '2 pcs'),
                        DropdownMenuItem(child: Text('3 PCS'), value: '3 pcs'),
                        DropdownMenuItem(child: Text('4 PCS'), value: '4 pcs'),
                        DropdownMenuItem(child: Text('5 PCS'), value: '5 pcs'),
                      ],
                      onChanged: (value) {},
                      underline: Container(),
                      isExpanded: true,
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Submit'),
                      style: buttonStyle(),
                    ),
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
