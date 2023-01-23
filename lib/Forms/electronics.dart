import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/textfieldStyle.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: BoxDecoration(gradient: primary)),
        title: Text(
          'Include Details',
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
                        label: 'Ad TiTle',
                      ),
                      EditTextfield(
                        label: 'Describe What you are Selling',
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: MyElevatedButton(
                        onPressed: () {},
                        child: Text('Post Now'),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: MyElevatedButton(
                        onPressed: () {},
                        child: Text('Upload Photos'),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),);
  }
}