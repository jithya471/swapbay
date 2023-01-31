// ignore_for_file: unused_import
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/home.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController emailAddress = TextEditingController();
TextEditingController genderController = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
//    final now = new DateTime.now();
//  String formatter = DateFormat('yMd').format(now);
  void fetch() async {
    http.Response response = await createUser();

    print(response.body);
  }

  Future<http.Response> createUser() {
    return http.post(
      Uri.parse('http://swapbay.besocial.pro/manage_reg'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': nameController.text,
        'email': emailAddress.text,
        'date': '10/2/22',
        'mobile': phoneController.text,
        'gender': genderController.text
      }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  String? gender;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  AutovalidateMode _autovalidate = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: primary,
                    ),
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      'Register Here',
                      style: TextStyle(fontSize: 25, color: primaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                        key: _formkey,
                        autovalidateMode: _autovalidate,
                        child: Column(
                          children: [
                            TextfieldStyle(
                              controller: nameController,
                              labeltext: 'Name',
                              hintText: 'Enter your Name',
                              errorMessage: 'Name field cannot be Blank',
                              inputType: TextInputType.name,
                            ),
                            TextfieldStyle(
                              controller: phoneController,
                              labeltext: 'Mobile',
                              hintText: 'Enter your Mobile Number',
                              errorMessage: 'Mobile field cannot be Blank',
                              inputType: TextInputType.phone,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextfieldStyle(
                              controller: emailAddress,
                              labeltext: 'E-Mail',
                              hintText: 'Enter your E-Mail',
                              inputType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  'GENDER',
                                  style: TextStyle(color: primaryColor),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Radio(
                                              activeColor: primaryColor,
                                              value: 'male',
                                              groupValue: gender,
                                              onChanged: (value) {
                                                setState(() {
                                                  gender = value.toString();
                                                });
                                              }),
                                          Expanded(
                                              child: Text('Male',
                                                  style:
                                                      TextStyle(color: kBlack)))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Radio(
                                              activeColor: primaryColor,
                                              value: 'female',
                                              groupValue: gender,
                                              onChanged: (value) {
                                                setState(() {
                                                  gender = value.toString();
                                                });
                                              }),
                                          Expanded(
                                              child: Text('Female',
                                                  style:
                                                      TextStyle(color: kBlack)))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Radio(
                                              activeColor: primaryColor,
                                              value: 'other',
                                              groupValue: gender,
                                              onChanged: (value) {
                                                setState(() {
                                                  gender = value.toString();
                                                });
                                              }),
                                          Expanded(
                                              child: Text('OTHER',
                                                  style:
                                                      TextStyle(color: kBlack)))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: MyElevatedButton(
                      borderRadius: BorderRadius.circular(20),
                      onPressed: () {
                        fetch();
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          Navigator.pushNamed(context, '/home');
                        } else {
                          setState(() {
                            _autovalidate = AutovalidateMode.always;
                          });
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextfieldStyle extends StatelessWidget {
  TextfieldStyle(
      {required this.labeltext,
      required this.hintText,
      this.errorMessage,
      this.inputType,
      this.controller});
  String labeltext;
  String hintText;
  String? errorMessage;
  TextEditingController? controller;
  final inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        validator: (value) => value!.isEmpty ? errorMessage : null,
        keyboardType: inputType,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.red)),
            filled: true,
            fillColor: Colors.transparent,
            labelText: labeltext,
            hintText: hintText,
            // hintStyle: TextStyle(color: Colors.white),
            // labelStyle: TextStyle(
            //   color: Colors.white,
            // ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}
