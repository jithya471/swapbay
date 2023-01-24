// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/home.dart';

const snackBar = SnackBar(
  content: Text('You cannot select more than 4 images'),
);

class ServicesImage extends StatefulWidget {
  const ServicesImage({super.key});

  @override
  State<ServicesImage> createState() => _ServicesImageState();
}

class _ServicesImageState extends State<ServicesImage> {
  late bool _isButtonDisabled;
  late bool _postbutton;
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (imageFileList!.length > 4) {
      snackBar;
      return;
    }
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState(() {
      print(selectedImages.length);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _isButtonDisabled = false;
    _postbutton = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: primary)),
          title: Text(
            'Select maximum 4 Images',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        itemCount: imageFileList!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(children: [
                            Card(
                              child: Image.file(
                                File(imageFileList![index].path),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                right: 5,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      imageFileList!.removeAt(index);
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    size: 30,
                                    color: Colors.red,
                                  ),
                                ))
                          ]);
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyElevatedButton(
                        borderRadius: BorderRadius.circular(50),
                        onPressed: () {
                          setState(() {
                            if (imageFileList!.length > 3) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              _isButtonDisabled = true;
                            } else {
                              selectImages();
                            }
                          });
                        },
                        child: Text('Select Images ${imageFileList!.length}/4'),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      SizedBox(
                        child: imageFileList!.isNotEmpty
                            ? MyElevatedButton(
                                borderRadius: BorderRadius.circular(50),
                                onPressed: () {
                                  if (imageFileList!.length > 4) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  } else {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => MyHome()));
                                  }
                                },
                                child: Text('Post Now'))
                            : null,
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
