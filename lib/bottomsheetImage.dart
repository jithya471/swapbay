import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'constants.dart';

class bottomsheetImage extends StatefulWidget {
  @override
  State<bottomsheetImage> createState() => _bottomsheetImageState();
}

class _bottomsheetImageState extends State<bottomsheetImage> {
  File? image;

  Future pickImage() async {
    try {
      // final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;
      final imageTemp = File(image.path);

      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to load $e');
    }
  }

  Future pickgLLEYImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to load $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 6,
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Column(children: [
        Text('Choose Image'),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                pickImage();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.camera,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Camera',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  pickgLLEYImage();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.image,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )),
            // image != null ? Image.file(image!) : Text('No image')
          ],
        )
      ]),
    );
  }
}
