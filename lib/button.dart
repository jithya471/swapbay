import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 104, 240, 240),
                Color.fromARGB(255, 22, 236, 201)
              ]),
              border: Border.all(
                color: Color(0xff6EEDED),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 92, 238, 238),
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 0.1, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0,
                    // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Center(
                child: Text(
              'Click me',
              style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-VariableFont_wght'),
            )),
          ),
        ),
      ),
    );
  }
}
