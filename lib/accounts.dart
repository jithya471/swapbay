import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/body.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/settings.dart';
import 'package:image_picker/image_picker.dart';
import 'bottomsheetImage.dart';
import 'textfieldStyle.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  File? image;
 

  String? gender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.angleLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: primary)),
          title: Text(
            'About',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: secondaryColor.withOpacity(0.4),
                            spreadRadius: 2,
                            offset: Offset(0, 10))
                      ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/user.jpg',
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(60, 60, 0, 0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, gradient: primary),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: _modalBottomSheetMenu(context));
                          // pickImage();
                        },
                        icon: Icon(
                          FontAwesomeIcons.pen,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Form(
                        child: Column(
                      children: [
                        EditTextfield(
                          label: 'FULL NAME',
                          hintText: 'JITHYA ANAND',
                        ),
                        EditTextfield(
                          label: 'E-MAIL',
                          hintText: 'jithya@gamil.com',
                        ),
                        EditTextfield(
                          label: 'MOBILE',
                          hintText: '+91 8946887465',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
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
                                          child: Text('MALE'),
                                        )
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
                                        Expanded(child: Text('FEMALE'))
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
                                        Expanded(child: Text('OTHER'))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('SAVE'),
                      ),
                      borderRadius: BorderRadius.circular(50))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


_modalBottomSheetMenu(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return bottomsheetImage();
      });
}
