import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';

import '../textfieldStyle.dart';

class Mobiles extends StatefulWidget {
  const Mobiles({super.key});

  @override
  State<Mobiles> createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> {
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
                                        name: 'iPhones',
                                        value: "iphones"),
                                    DropDownValueModel(
                                        name: 'Samsung', value: "samsung"),
                                    DropDownValueModel(
                                        name: 'Mi', value: "mi"),
                                    DropDownValueModel(
                                        name: 'Vivo', value: "Vivo"),
                                    DropDownValueModel(
                                        name: 'Oppo', value: "oppo"),
                                    DropDownValueModel(
                                        name: 'Realme', value: "realme"),
                                    DropDownValueModel(
                                        name: 'Asus', value: "Asus"),
                                    DropDownValueModel(
                                        name: 'Blackberry', value: "blackberry"),
                                  ],
                                  listTextStyle:
                                  const TextStyle(color: Colors.red),
                                  dropDownItemCount: 8, onChanged: (val) {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                EditTextfield(
                  label: 'Title',
                ),
                EditTextfield(
                  label: 'Describe what you are selling',
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