import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import '../textfieldStyle.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  String? transmission;
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
                        label: 'Brand',
                      ),
                      EditTextfield(
                        label: 'Year',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPadding / 2,
                                  horizontal: kDefaultPadding / 2),
                              child: Text(
                                textAlign: TextAlign.start,
                                'Transmission',
                                style: TextStyle(color: primaryColor),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          activeColor: primaryColor,
                                          value: 'automatic',
                                          groupValue: transmission,
                                          onChanged: (value) {
                                            setState(() {
                                              transmission = value.toString();
                                            });
                                          }),
                                      Expanded(
                                        child: Text(
                                          'AUTOMATIC',
                                          style: TextStyle(color: primaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          activeColor: primaryColor,
                                          value: 'manual',
                                          groupValue: transmission,
                                          onChanged: (value) {
                                            setState(() {
                                              transmission = value.toString();
                                            });
                                          }),
                                      Expanded(
                                          child: Text(
                                        'MANUAL',
                                        style: TextStyle(color: primaryColor),
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                                "Fuel",
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
                                        name: 'CNG & Hybrids',
                                        value: "cng_hybrids"),
                                    DropDownValueModel(
                                        name: 'Diesel', value: "diesel"),
                                    DropDownValueModel(
                                        name: 'Electric', value: "electric"),
                                    DropDownValueModel(
                                        name: 'LPG', value: "lpg"),
                                    DropDownValueModel(
                                        name: 'Petrol', value: "Petrol"),
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
                        label: 'KM driven',
                      ),
                      EditTextfield(
                        label: 'No. of Owners',
                      ),
                      EditTextfield(
                        label: 'Ad TiTle',
                      ),
                      EditTextfield(
                        label: 'Describe What you are Selling',
                      ),
                      EditTextfield(
                        label: 'Price',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: MyElevatedButton(
                    onPressed: () {},
                    child: Text('Post Now'),
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
