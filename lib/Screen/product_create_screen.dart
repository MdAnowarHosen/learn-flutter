import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import '../RestApi/rest_client.dart';
import '../styles/style.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  Map<String, String> formData = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "1 pcs",
    "TotalPrice": "",
    "UnitPrice": "",
  };

  final _formKey = GlobalKey<FormState>();

  // 👇 Function to handle form submission
  submitForm(BuildContext context) async {
    // _formKey.currentState!.validate();

    if (_formKey.currentState!.validate()) {
      // Form is valid, you can perform submission here

      await productCreateRequest(formData);
    } else {
      // Form is invalid
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please fix the errors in red.')));
    }
  }

  inputOnChange(key, inputValue) {
    setState(() {
      formData.update(key, (value) => inputValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product"),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            backgroundScreen(context),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: inputDecorationStyle('Product Name'),
                      onChanged: (value) => inputOnChange('ProductName', value),
                      validator:
                          ValidationBuilder().required().minLength(5).build(),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: inputDecorationStyle('Product Code'),
                      onChanged: (value) => inputOnChange('ProductCode', value),
                      validator:
                          ValidationBuilder().required().minLength(5).build(),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: inputDecorationStyle('Product Image'),
                      onChanged: (value) => inputOnChange('Img', value),
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: inputDecorationStyle('Product Unit Price'),
                      onChanged: (value) => inputOnChange('UnitPrice', value),
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: inputDecorationStyle('Product Total Price'),
                      onChanged: (value) => inputOnChange('TotalPrice', value),
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: 20),
                    AppDropdownStyle(
                      DropdownButton(
                        onChanged: (value) => inputOnChange('Qty', value),
                        value: formData['Qty'],
                        items: [
                          DropdownMenuItem(
                            child: Text('Select Product QTY'),
                            value: '',
                          ),
                          DropdownMenuItem(
                            child: Text('1 PCS'),
                            value: '1 pcs',
                          ),
                          DropdownMenuItem(
                            child: Text('2 PCS'),
                            value: '2 pcs',
                          ),
                          DropdownMenuItem(
                            child: Text('3 PCS'),
                            value: '3 pcs',
                          ),
                          DropdownMenuItem(
                            child: Text('4 PCS'),
                            value: '4 pcs',
                          ),
                          DropdownMenuItem(
                            child: Text('5 PCS'),
                            value: '5 pcs',
                          ),
                        ],
                        underline: Container(),
                        isExpanded: true,
                      ),
                    ),

                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          submitForm(context);
                        },
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
      ),
    );
  }
}
