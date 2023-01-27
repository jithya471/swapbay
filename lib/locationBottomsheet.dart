import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/textfieldStyle.dart';

import 'constants.dart';

class locationBottomsheet extends StatefulWidget {
  @override
  State<locationBottomsheet> createState() => _locationBottomsheetState();
}

class _locationBottomsheetState extends State<locationBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      // height: MediaQuery.of(context).size.height / 6,
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              icon: Icon(
                Icons.location_city,
                color: primaryColor,
              ),
              hintText: 'Enter city Name',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
            onChanged: (value) {
              // cityName=value;
            },
          ),
        ),
        // Text('$place'),
        MyElevatedButton(
          onPressed: () {
            //  Navigator.pop(context, cityName);
          },
          child: Text('Get Location'),
          borderRadius: BorderRadius.circular(50),
        )
      ]),
    );
  }
}
