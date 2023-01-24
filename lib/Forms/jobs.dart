import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:swapbay/Forms/jobsImage.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';

import '../textfieldStyle.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: primary)),
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
                                  "Select jobs",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ), // adjust your title as you required
                                ),
                                DropDownTextField(
                                    dropDownIconProperty:
                                        IconProperty(color: primaryColor),
                                    textFieldDecoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColor))),
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
                                          name: 'Data entry & Back office',
                                          value: "data_entry_Back_office"),
                                      DropDownValueModel(
                                          name: 'Sales & Marketing',
                                          value: "sales"),
                                      DropDownValueModel(
                                          name: 'BPO & Telecaller',
                                          value: "bpo"),
                                      DropDownValueModel(
                                          name: 'Driver', value: "driver"),
                                      DropDownValueModel(
                                          name: 'Office Assistant',
                                          value: "office_assistant"),
                                      DropDownValueModel(
                                          name: 'Delivery & Collection',
                                          value: "delivery"),
                                      DropDownValueModel(
                                          name: 'Teacher', value: "teacher"),
                                      DropDownValueModel(
                                          name: 'Cook', value: "cook"),
                                      DropDownValueModel(
                                          name: 'Receptionist',
                                          value: "receptionist"),
                                      DropDownValueModel(
                                          name: 'Graphic designer',
                                          value: "graphic_designer"),
                                      DropDownValueModel(
                                          name: 'Software Developer',
                                          value: "software_developer"),
                                      DropDownValueModel(
                                          name: 'Other Jobs', value: "others"),
                                    ],
                                    listTextStyle:
                                        const TextStyle(color: Colors.red),
                                    dropDownItemCount: 8,
                                    onChanged: (val) {}),
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
                                  "Salary Period",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ), // adjust your title as you required
                                ),
                                DropDownTextField(
                                    dropDownIconProperty:
                                        IconProperty(color: primaryColor),
                                    textFieldDecoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColor))),
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
                                          name: 'Hourly', value: "hourly"),
                                      DropDownValueModel(
                                          name: 'Monthly', value: "monthly"),
                                      DropDownValueModel(
                                          name: 'Weekly', value: "weekly"),
                                      DropDownValueModel(
                                          name: 'Yearly', value: "yearly"),
                                    ],
                                    listTextStyle:
                                        const TextStyle(color: Colors.red),
                                    dropDownItemCount: 8,
                                    onChanged: (val) {}),
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
                                  "Position type",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ), // adjust your title as you required
                                ),
                                DropDownTextField(
                                    dropDownIconProperty:
                                        IconProperty(color: primaryColor),
                                    textFieldDecoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: primaryColor))),
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
                                          name: 'Contract', value: "contract"),
                                      DropDownValueModel(
                                          name: 'Full-time',
                                          value: "full-time"),
                                      DropDownValueModel(
                                          name: 'Part-time',
                                          value: "part-time"),
                                      DropDownValueModel(
                                          name: 'Temporary',
                                          value: "temporary"),
                                    ],
                                    listTextStyle:
                                        const TextStyle(color: Colors.red),
                                    dropDownItemCount: 8,
                                    onChanged: (val) {}),
                              ],
                            ),
                          ),
                        ),
                        EditTextfield(
                          label: 'Salary from ',
                        ),
                        EditTextfield(
                          label: 'Salary to',
                        ),
                        EditTextfield(
                          label: 'Ad Title',
                        ),
                        EditTextfield(
                          label: 'Describe What you are Selling',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: MyElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => JobImage()));
                      },
                      child: Text('Post Now'),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
