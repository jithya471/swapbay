import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:swapbay/Forms/servicesImage.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/textfieldStyle.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
                        label: 'Ad Title',
                      ),
                      EditTextfield(
                        label: 'Place',
                      ),
                      EditTextfield(
                        label: 'Describe What are your Services',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: MyElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ServicesImage()));
                    },
                    child: Text('Next'),
                    borderRadius: BorderRadius.circular(50),
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
