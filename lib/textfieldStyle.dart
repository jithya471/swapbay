import 'package:flutter/material.dart';
import 'package:swapbay/constants.dart';

class EditTextfield extends StatelessWidget {
  EditTextfield({required this.label,  this.hintText});
  final String label;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      child: TextField(
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: primaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor))),
      ),
    );
  }
}
