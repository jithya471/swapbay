import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:swapbay/Forms/propertyImage.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/textfieldStyle.dart';

class Properties extends StatefulWidget {
  const Properties({super.key});

  @override
  State<Properties> createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: BoxDecoration(gradient: primary)),
        title: Text(
          'Properties',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      EditTextfield(
                        label: 'Ad Title',
                      ),
                      EditTextfield(
                        label: 'Describe What you are Selling',
                      ),
                      EditTextfield(
                        label: 'Place',
                      ),
                      EditTextfield(
                        label: 'Price',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: MyElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PropertImage()));
                          },
                          child: Text('Next'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
