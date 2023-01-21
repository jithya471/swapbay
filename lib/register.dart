// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  AutovalidateMode _autovalidate = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
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
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
                      labeltext: 'Name',
                      hintText: 'Enter your Name',
                      errorMessage: 'Name field cannot be Blank',
                      inputType: TextInputType.name,
                    ),
                    TextfieldStyle(
                      labeltext: 'Mobile',
                      hintText: 'Enter your Mobile Number',
                      errorMessage: 'Mobile field cannot be Blank',
                      inputType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextfieldStyle(
                      labeltext: 'E-Mail',
                      hintText: 'Enter your E-Mail',
                      inputType: TextInputType.emailAddress,
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: MyElevatedButton(
              borderRadius: BorderRadius.circular(20),
              onPressed: () {
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
      )),
    );
  }
}

class TextfieldStyle extends StatelessWidget {
  TextfieldStyle(
      {required this.labeltext,
      required this.hintText,
      this.errorMessage,
      this.inputType});
  String labeltext;
  String hintText;
  String? errorMessage;
  final inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
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
