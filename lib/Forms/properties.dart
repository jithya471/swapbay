import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2,
                            horizontal: kDefaultPadding),
                        child: Container(
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons .dehaze,color: Colors.pink,size: 20,),
                                ],
                              ),
                              Text(
                                "Type*",
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
                                        name: 'Apartments',
                                        value: "apartments"),
                                    DropDownValueModel(
                                        name: 'Builder Floors', value: "builder floors"),
                                    DropDownValueModel(
                                        name: 'Houses & Villas', value: "houses &villas"),
                                  ],
                                  listTextStyle:
                                  const TextStyle(color: Colors.red),
                                  dropDownItemCount: 8, onChanged: (val) {}),
                            ],

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2,
                            horizontal: kDefaultPadding),
                        child: Container(
                          child: Stack(
                            children: [
                              Text(
                                "BedRooms",
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
                                        name: '1',
                                        value: "1"),
                                    DropDownValueModel(
                                        name: '2', value: "2"),
                                    DropDownValueModel(
                                        name: '3', value: "3"),
                                    DropDownValueModel(
                                        name: '4+', value: "4+"),
                                  ],
                                  listTextStyle:
                                  const TextStyle(color: Colors.red),
                                  dropDownItemCount: 8, onChanged: (val) {}),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2,
                            horizontal: kDefaultPadding),
                        child: Container(
                          child: Stack(
                            children: [
                              Text(
                                "BathRooms",
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
                                        name: '1',
                                        value: "1"),
                                    DropDownValueModel(
                                        name: '2', value: "2"),
                                    DropDownValueModel(
                                        name: '3', value: "3"),
                                    DropDownValueModel(
                                        name: '4+', value: "4+"),
                                  ],
                                  listTextStyle:
                                  const TextStyle(color: Colors.red),
                                  dropDownItemCount: 8, onChanged: (val) {}),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding / 2,
                            horizontal: kDefaultPadding),
                        child: Container(
                          child: Stack(
                            children: [
                              Text(
                                "Furnishing",
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
                                        name: 'Furnished',
                                        value: "furnished"),
                                    DropDownValueModel(
                                        name: 'SemiFurnished', value: "semifurnished"),
                                    DropDownValueModel(
                                        name: 'UnFurnished', value: "unfurnished"),
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
                  label: 'Maintenance',
                ),
                EditTextfield(
                  label: 'Total Floors',
                ),
                EditTextfield(
                  label: 'Car Parking',
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}