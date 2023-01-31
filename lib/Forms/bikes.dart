import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:swapbay/Forms/bikesImage.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/textfieldStyle.dart';

import '../constants.dart';

class Bikes extends StatefulWidget {
  const Bikes({super.key});

  @override
  State<Bikes> createState() => _BikesState();
}

class _BikesState extends State<Bikes> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2,
                            horizontal: kDefaultPadding),
                        child: Container(
                          child: Stack(
                            children: [
                              Text(
                                "Brand*",
                                style: TextStyle(
                                  color: primaryColor,
                                ), // adjust your title as you required
                              ),
                              DropDownTextField(
                                  dropDownIconProperty:
                                      IconProperty(color: primaryColor),
                                  textFieldDecoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: primaryColor))),
                                  listSpace: 20,
                                  listPadding: ListPadding(top: 20),
                                  enableSearch: false,
                                  validator: (value) {
                                    if (value == null) {
                                      return "Required field";
                                    } else {
                                      return null;
                                    }
                                  },
                                  dropDownList: const [
                                    DropDownValueModel(
                                        name: 'Bajaj', value: "bajaj"),
                                    DropDownValueModel(
                                        name: 'Hero', value: "hero"),
                                    DropDownValueModel(
                                        name: 'Hero Honda',
                                        value: "hero honda"),
                                    DropDownValueModel(
                                        name: 'Honda', value: "honda"),
                                    DropDownValueModel(
                                        name: 'KTM', value: "ktm"),
                                    DropDownValueModel(
                                        name: 'Suzuki', value: "suzuki"),
                                    DropDownValueModel(
                                        name: 'TVS', value: "tvs"),
                                    DropDownValueModel(
                                        name: 'Yamaha', value: "yamaha"),
                                  ],
                                  listTextStyle:
                                      const TextStyle(color: Colors.red),
                                  dropDownItemCount: 8,
                                  onChanged: (val) {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                EditTextfield(
                  label: 'Year',
                ),
                EditTextfield(
                  label: 'KM Driven',
                ),
                EditTextfield(
                  label: 'Describe what you are selling',
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
                          builder: (context) => BikeImage()));
                    },
                    child: Text('Next'),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
