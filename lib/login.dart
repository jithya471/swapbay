import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';

import 'otp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  // static String verify = '';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phonecontroller = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  // void initState() {
  //   // phonecontroller.text = '+91';

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/illustration-2.png',
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      'Login',
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
                      "Welcome to SwapBay. Add your phone number. we'll send you a verification code so we know you're real",
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
                          TextFormField(
                            controller: phonecontroller,
                            // onChanged: (value) {
                              
                            // },
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              prefix: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  '(+91)',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 32,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: MyElevatedButton(
                              borderRadius: BorderRadius.circular(30),
                              onPressed: () async {
                                // await FirebaseAuth.instance.verifyPhoneNumber(
                                //     verificationCompleted:
                                //         (PhoneAuthCredential credential) async {
                                //       await auth
                                //           .signInWithCredential(credential)
                                //           .then((value) => {
                                //                 print(
                                //                     'You are logged in successfully')
                                //               });
                                //     },
                                //     verificationFailed:
                                //         (FirebaseAuthException exception) {
                                //       print(exception.message);
                                //     },
                                //     codeSent: (String verificationId,
                                //         int? resendToken) {
                                //       LoginPage.verify = verificationId;
                                //       Navigator.of(context).push(
                                //         MaterialPageRoute(
                                //             builder: (context) => Otp()),
                                //       );
                                //       // verificationIDRecieved = verificationId;
                                //     },
                                //     codeAutoRetrievalTimeout:
                                //         (String verificationId) {},
                                //     phoneNumber:
                                //         "${phonecontroller.text + verificationIDRecieved}"
                                //         // "+919846988509"
                                //         );
                                 Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Otp(phonecontroller.text),
                                  ) );
                              },
                              child: Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Text(
                                  'Send',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // void verifyNumber() {
  //   auth.verifyPhoneNumber(
  //       verificationCompleted: (PhoneAuthCredential credential) async {
  //         await auth
  //             .signInWithCredential(credential)
  //             .then((value) => {print('You are logged in successfully')});
  //       },
  //       verificationFailed: (FirebaseAuthException exception) {
  //         print(exception.message);
  //       },
  //       codeSent: (String verificationId, int? resendToken) {
  //         verificationIDRecieved = verificationId;
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {},
  //       phoneNumber: phonecontroller.text);
  // }
}
