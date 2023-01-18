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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        child: Image.asset(
                          'assets/logo.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Register Here',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                          key: _formkey,
                          autovalidateMode: _autovalidate,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextfieldStyle(
                                labeltext: 'Name',
                                hintText: 'Enter your Name',
                                errorMessage: 'Name field cannot be Blank',
                                inputType: TextInputType.name,
                              ),
                              SizedBox(
                                height: 10,
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
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyElevatedButton(
                          borderRadius: BorderRadius.circular(20),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              Navigator.pushNamed(context, '/accounts');
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
              ),
            )),
      ),
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
        validator: (value) => value!.isEmpty ? errorMessage : null,
        keyboardType: inputType,
        style: TextStyle(color: Colors.white),
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
            hintStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}

