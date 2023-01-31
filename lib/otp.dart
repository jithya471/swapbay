import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/home.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swapbay/login.dart';
import 'package:swapbay/register.dart';

class Otp extends StatefulWidget {
  final String phone;
  Otp(this.phone);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String code = '';

  //  LoginPage loginPage = LoginPage();

  @override
  void initState() {
    verifyNumber();
    print(widget.phone);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/illustration-3.png',
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your OTP code number",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Form(
                          child: PinCodeTextField(
                        textStyle: TextStyle(color: primaryColor),
                        appContext: context,
                        length: 6,
                        onChanged: (value) {
                          // code = value;
                          // print(value);
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldOuterPadding: EdgeInsets.symmetric(
                              vertical: kDefaultPadding / 2,
                              horizontal: kDefaultPadding / 4),
                          fieldHeight: 30,
                          fieldWidth: 30,
                        ),
                        cursorColor: primaryColor,
                        animationDuration: const Duration(milliseconds: 300),
                        keyboardType: TextInputType.number,
                        boxShadows: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (pin) async {
                          try {
                            UserCredential _authResult = await FirebaseAuth
                                .instance
                                .signInWithCredential(
                                    PhoneAuthProvider.credential(
                                        verificationId: code, smsCode: pin));
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                          } catch (e) {
                            print(e);
                          }
                        },
                      )),
                      SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: MyElevatedButton(
                          borderRadius: BorderRadius.circular(24.0),
                          onPressed: () {
                            // try {
                            //   PhoneAuthCredential credential =
                            //       PhoneAuthProvider.credential(
                            //           verificationId: LoginPage.verify,
                            //           smsCode: code);
                            //   print(code);

                            //   await FirebaseAuth.instance
                            //       .signInWithCredential(credential);

                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) => MyHome()));
                            // } catch (e) {
                            //   print(e);
                            // }
                          },
                          child: Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Verify',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Didn't you receive any code?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Resend New Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: MediaQuery.of(context).size.height / 13,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: primaryColor),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: primaryColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }

  void verifyNumber() {
    auth.verifyPhoneNumber(
        phoneNumber: "+91${widget.phone}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            print("logged in sucessfully");
          });
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verificationID, int? resendToken) {
          code = verificationID;
        },
        codeAutoRetrievalTimeout: (String verificationID) {});
  }
}
