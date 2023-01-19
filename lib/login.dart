import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';

import 'constants.dart';

class TextfieldDecoration extends StatelessWidget {
  TextfieldDecoration(
      {required this.hintText, required this.label, this.inputType});
  String hintText;
  String label;
  final inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        keyboardType: inputType,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            labelText: label,
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


// class button extends StatelessWidget {
//   button({required this.buttontext});
//   Text buttontext;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 50,
//         width: 100,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 104, 240, 240),
//             Color.fromARGB(255, 22, 236, 201)
//           ]),
//           border: Border.all(
//             color: Color(0xff6EEDED),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Color.fromARGB(255, 92, 238, 238),
//               blurRadius: 10.0, // soften the shadow
//               spreadRadius: 0.1, //extend the shadow
//               offset: Offset(
//                 2.0, // Move to right 5  horizontally
//                 2.0,
//                 // Move to bottom 5 Vertically
//               ),
//             )
//           ],
//         ),
//         child: Center(
//           child: buttontext,
//         ));
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SwapBay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // SizedBox(height: ,),
              TextfieldDecoration(hintText: 'Enter your phone number', label: 'Phone Number',),
              // SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: Text(
                        'Send OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextfieldDecoration(hintText: 'Enter your OTP number', label: 'OTP Number',),
              SizedBox(height: 20,),
             MyElevatedButton(
               borderRadius: BorderRadius.circular(50),
                 onPressed: (){
               Navigator.pushNamed(context, '/bottom');
             }, child: Text('LogIn',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
}
